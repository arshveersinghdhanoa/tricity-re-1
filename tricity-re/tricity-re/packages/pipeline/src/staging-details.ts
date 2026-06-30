import type { ProjectDetailFields } from "@tricity/core";
import { getSupabase, resolveTenantId } from "./staging.js";
import fs from "fs";
import path from "path";

export interface StagingDetailEntry {
  reraNumber: string;
  /** Official citation: PSRERA detail page URL + date, or exported document reference. */
  sourceReference: string;
  projectCost?: string;
  totalArea?: string;
  facilities?: string[];
  parking?: string;
  colonyType?: string;
}

export interface StageDetailsResult {
  inserted: number;
  errors: string[];
}

const DEFAULT_PATH = "data/staging-details.json";

const TEMPLATE: StagingDetailEntry[] = [
  {
    reraNumber: "PBRERA-SAS06-PR0123",
    sourceReference:
      "PSRERA project detail page — manually retrieved after CAPTCHA (replace with real URL + date)",
    projectCost: "₹45 Cr (indicative from RERA filing)",
    totalArea: "12.5 acres",
    facilities: ["Clubhouse", "Park", "Security"],
    parking: "2 basements + surface",
    colonyType: "Group Housing",
  },
];

function validateEntry(entry: StagingDetailEntry, index: number): string[] {
  const errors: string[] = [];
  if (!entry.reraNumber || !/^PBRERA-/.test(entry.reraNumber)) {
    errors.push(`Row ${index}: invalid reraNumber (must match ^PBRERA-)`);
  }
  if (!entry.sourceReference || entry.sourceReference.trim().length < 12) {
    errors.push(`Row ${index}: sourceReference required (min 12 chars — CAPTCHA page citation)`);
  }
  const hasDetail =
    entry.projectCost ||
    entry.totalArea ||
    entry.parking ||
    entry.colonyType ||
    (entry.facilities && entry.facilities.length > 0);
  if (!hasDetail) {
    errors.push(`Row ${index}: at least one detail field required`);
  }
  return errors;
}

function toDetailPayload(entry: StagingDetailEntry): ProjectDetailFields {
  return {
    projectCost: entry.projectCost ?? null,
    totalArea: entry.totalArea ?? null,
    facilities: entry.facilities ?? [],
    parking: entry.parking ?? null,
    colonyType: entry.colonyType ?? null,
    sourceReference: entry.sourceReference.trim(),
    enrichedAt: new Date().toISOString(),
  };
}

export async function importStagingDetails(
  options: { file?: string; tenantId?: string; dryRun?: boolean } = {},
): Promise<StageDetailsResult> {
  const filePath = options.file ?? DEFAULT_PATH;
  const dryRun = options.dryRun ?? false;
  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";
  const resolvedPath = path.resolve(process.cwd(), filePath);

  if (!fs.existsSync(resolvedPath)) {
    const dir = path.dirname(resolvedPath);
    if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
    fs.writeFileSync(resolvedPath, JSON.stringify(TEMPLATE, null, 2));
    console.log(`[staging-details] Template created at ${resolvedPath}`);
    console.log("[staging-details] Replace with Client-verified detail data, then re-run.");
    return { inserted: 0, errors: [] };
  }

  let entries: StagingDetailEntry[];
  try {
    entries = JSON.parse(fs.readFileSync(resolvedPath, "utf8"));
  } catch (err) {
    return {
      inserted: 0,
      errors: [`Failed to parse ${filePath}: ${err instanceof Error ? err.message : String(err)}`],
    };
  }

  if (!Array.isArray(entries) || entries.length === 0) {
    return { inserted: 0, errors: ["File contains no entries"] };
  }

  const tenantId = await resolveTenantId(tenantSlug);
  if (!tenantId && !dryRun) {
    return { inserted: 0, errors: [`Tenant not found: ${tenantSlug}`] };
  }

  const errors: string[] = [];
  let inserted = 0;

  for (let i = 0; i < entries.length; i++) {
    const entry = entries[i];
    const validationErrors = validateEntry(entry, i + 1);
    if (validationErrors.length > 0) {
      errors.push(...validationErrors);
      continue;
    }

    const detail = toDetailPayload(entry);
    const status = validationErrors.length === 0 ? "valid" : "invalid";

    if (dryRun) {
      console.log(`[staging-details] DRY RUN — would stage detail for ${entry.reraNumber}`);
      inserted++;
      continue;
    }

    const supabase = getSupabase();
    if (!supabase || !tenantId) {
      errors.push("Supabase not configured");
      break;
    }

    const { error: insertError } = await supabase.from("staging_project_details").insert({
      tenant_id: tenantId,
      rera_number: entry.reraNumber,
      source_reference: entry.sourceReference.trim(),
      detail,
      validation_status: status,
      validation_errors: null,
    });

    if (insertError) {
      errors.push(`Insert failed for ${entry.reraNumber}: ${insertError.message}`);
    } else {
      inserted++;
    }
  }

  console.log(`[staging-details] ${inserted} detail record(s) staged (${errors.length} errors)`);
  return { inserted, errors };
}
