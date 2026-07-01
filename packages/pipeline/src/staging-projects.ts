import { getSupabase, resolveTenantId } from "./staging.js";
import fs from "fs";
import path from "path";

/**
 * Assisted manual entry for project data into staging_projects.
 *
 * When automated scraping is not viable, projects can be manually entered
 * via a JSON file and imported into staging_projects (never directly to production).
 *
 * From staging_projects, promote.ts handles promotion to production projects
 * with deduplication and audit logging.
 */

export interface StagingProjectEntry {
  reraNumber: string;
  name: string;
  district?: string;
  promoter?: string;
  address?: string;
  pinCode?: string;
  website?: string;
  registrationDate?: string;
  validUpto?: string;
  status?: string;
}

export interface ImportStagingProjectsResult {
  inserted: number;
  errors: string[];
}

const DEFAULT_PATH = "data/staging-projects.json";
const TEMPLATE: StagingProjectEntry[] = [
  {
    reraNumber: "PBRERA-SAS06-PR0123",
    name: "Example Project",
    district: "Sahibzada Ajit Singh Nagar (Mohali)",
    promoter: "Example Builders Pvt Ltd",
    address: "Sector 123, Mohali",
    pinCode: "140301",
  },
];

export async function importStagingProjects(
  options: { file?: string; tenantId?: string; dryRun?: boolean } = {},
): Promise<ImportStagingProjectsResult> {
  const filePath = options.file ?? DEFAULT_PATH;
  const dryRun = options.dryRun ?? false;
  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";

  // Generate template if file doesn't exist
  const resolvedPath = path.resolve(process.cwd(), filePath);
  if (!fs.existsSync(resolvedPath)) {
    const dir = path.dirname(resolvedPath);
    if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
    fs.writeFileSync(resolvedPath, JSON.stringify(TEMPLATE, null, 2));
    console.log(`[staging-projects] Template created at: ${resolvedPath}`);
    console.log(`[staging-projects] Edit the file with real data, then re-run.`);
    return { inserted: 0, errors: [] };
  }

  // Parse file
  let entries: StagingProjectEntry[];
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
  const validEntries: StagingProjectEntry[] = [];

  for (let i = 0; i < entries.length; i++) {
    const e = entries[i];
    const errs: string[] = [];

    if (!e.reraNumber || !/^PBRERA-/.test(e.reraNumber)) {
      errs.push(`Invalid RERA number: ${e.reraNumber}`);
    }
    if (!e.name || e.name.length < 2) {
      errs.push("Missing or too-short project name");
    }

    if (errs.length > 0) {
      errors.push(`Entry ${i}: ${errs.join("; ")}`);
    } else {
      validEntries.push(e);
    }
  }

  console.log(`[staging-projects] ${validEntries.length} valid entries, ${errors.length} validation errors`);

  if (dryRun) {
    console.log(`[staging-projects] DRY RUN — would write ${validEntries.length} entries to staging_projects`);
    return { inserted: 0, errors };
  }

  // Write to staging_projects (never directly to production — Non-negotiable #4)
  const supabase = getSupabase();
  if (!supabase) return { inserted: 0, errors: [...errors, "Supabase not configured"] };

  const tenantId = await resolveTenantId(tenantSlug);
  if (!tenantId) return { inserted: 0, errors: [...errors, `Tenant not found: ${tenantSlug}`] };

  let inserted = 0;

  for (const e of validEntries) {
    const rawPayload: Record<string, unknown> = {
      reraNumber: e.reraNumber,
      projectName: e.name,
      district: e.district ?? "",
      promoterName: e.promoter ?? "",
      promoterAddress: e.address ?? "",
      pinCode: e.pinCode ?? "",
      website: e.website ?? "",
      registrationDate: e.registrationDate ?? "",
      validUpto: e.validUpto ?? "",
    };

    const { error: insertError } = await supabase.from("staging_projects").insert({
      tenant_id: tenantId,
      rera_number: e.reraNumber,
      raw_payload: rawPayload,
      parsed_name: e.name,
      parsed_status: e.status ?? "active",
      validation_status: "valid",
      validation_errors: null,
      source_portal: "manual_entry",
    });

    if (insertError) {
      errors.push(`Insert failed for ${e.reraNumber}: ${insertError.message}`);
    } else {
      inserted++;
    }
  }

  console.log(`[staging-projects] ${inserted} entries written to staging_projects`);
  console.log(`[staging-projects] Run 'pnpm pipeline:promote' to promote to production`);
  return { inserted, errors };
}
