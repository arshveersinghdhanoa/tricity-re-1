import { getSupabase, resolveTenantId } from "./staging.js";
import fs from "fs";
import path from "path";

/**
 * Assisted manual entry for price data into staging_prices.
 *
 * This is the M2 fallback approach: when automated CAPTCHA-gated scraping
 * is not viable, prices can be manually entered via a JSON file and
 * imported into staging_prices (never directly to production).
 *
 * From staging_prices, promote.ts handles promotion to production prices
 * with correct verified/source handling per Non-negotiable #1.
 */

export interface StagingPriceEntry {
  reraNumber: string;
  priceType: "asking" | "transacted";
  amount: number;
  verified: boolean;
  source: string | null;
  currency?: string;
  unit?: string;
}

export interface ImportStagingPricesResult {
  inserted: number;
  errors: string[];
}

const DEFAULT_PATH = "data/staging-prices.json";
const TEMPLATE: StagingPriceEntry[] = [
  {
    reraNumber: "PBRERA-SAS06-PR0123",
    priceType: "asking",
    amount: 4200,
    verified: false,
    source: null,
  },
  {
    reraNumber: "PBRERA-SAS06-PR0123",
    priceType: "transacted",
    amount: 3950,
    verified: true,
    source: "Sub-Registrar Office, SAS Nagar",
  },
];

export async function importStagingPrices(
  options: { file?: string; tenantId?: string; dryRun?: boolean } = {},
): Promise<ImportStagingPricesResult> {
  const filePath = options.file ?? DEFAULT_PATH;
  const dryRun = options.dryRun ?? false;
  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";

  // Generate template if file doesn't exist
  const resolvedPath = path.resolve(process.cwd(), filePath);
  if (!fs.existsSync(resolvedPath)) {
    const dir = path.dirname(resolvedPath);
    if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
    fs.writeFileSync(resolvedPath, JSON.stringify(TEMPLATE, null, 2));
    console.log(`[staging-prices] Template created at: ${resolvedPath}`);
    console.log(`[staging-prices] Edit the file with real data, then re-run.`);
    return { inserted: 0, errors: [] };
  }

  // Parse file
  let entries: StagingPriceEntry[];
  try {
    const raw = fs.readFileSync(resolvedPath, "utf8");
    entries = JSON.parse(raw);
  } catch (err) {
    return { inserted: 0, errors: [`Failed to parse ${filePath}: ${err instanceof Error ? err.message : String(err)}`] };
  }

  if (!Array.isArray(entries) || entries.length === 0) {
    return { inserted: 0, errors: ["File contains no entries or is not an array"] };
  }

  // Validate entries
  const errors: string[] = [];
  const validEntries: StagingPriceEntry[] = [];

  for (let i = 0; i < entries.length; i++) {
    const e = entries[i];
    const errs: string[] = [];

    if (!e.reraNumber || !/^PBRERA-/.test(e.reraNumber)) {
      errs.push(`Invalid RERA number: ${e.reraNumber}`);
    }
    if (!["asking", "transacted"].includes(e.priceType)) {
      errs.push(`Invalid priceType: ${e.priceType}`);
    }
    if (typeof e.amount !== "number" || e.amount <= 0) {
      errs.push(`Invalid amount: ${e.amount}`);
    }
    if (e.verified && (!e.source || e.source.trim().length === 0)) {
      errs.push("verified=true requires a non-empty source (Non-negotiable #1)");
    }

    if (errs.length > 0) {
      errors.push(`Entry ${i}: ${errs.join("; ")}`);
    } else {
      validEntries.push(e);
    }
  }

  console.log(`[staging-prices] ${validEntries.length} valid entries, ${errors.length} validation errors`);

  if (dryRun) {
    console.log(`[staging-prices] DRY RUN — would write ${validEntries.length} entries to staging_prices`);
    return { inserted: 0, errors };
  }

  // Write to staging_prices (never directly to production prices — Non-negotiable #4)
  const supabase = getSupabase();
  if (!supabase) return { inserted: 0, errors: [...errors, "Supabase not configured"] };

  const tenantId = await resolveTenantId(tenantSlug);
  if (!tenantId) return { inserted: 0, errors: [...errors, `Tenant not found: ${tenantSlug}`] };

  let inserted = 0;

  for (const e of validEntries) {
    const { error: insertError } = await supabase.from("staging_prices").insert({
      tenant_id: tenantId,
      rera_number: e.reraNumber,
      price_type: e.priceType,
      amount: e.amount,
      verified: e.verified,
      source: e.source,
      raw_payload: e as unknown as Record<string, unknown>,
      validation_status: "valid",
      source_portal: "manual_entry",
    });

    if (insertError) {
      errors.push(`Insert failed for ${e.reraNumber} (${e.priceType}): ${insertError.message}`);
    } else {
      inserted++;
    }
  }

  console.log(`[staging-prices] ${inserted} entries written to staging_prices`);
  console.log(`[staging-prices] Run 'pnpm pipeline:promote' to promote to production`);
  return { inserted, errors };
}
