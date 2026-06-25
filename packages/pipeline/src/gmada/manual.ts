import fs from "fs";
import path from "path";
import { resolveTenantId, writeManyStaging, type StagingProjectInsert } from "../staging.js";
import { isOffPeakHour } from "../config.js";

export interface ManualProjectRecord {
  reraNumber: string;
  projectName: string;
  typeOfProject?: string;
  promoterName?: string;
  location?: string;
  address?: string;
  contact?: string;
}

export async function scrapeGmada(options: { dryRun?: boolean; tenantId?: string; file?: string } = {}) {
  const dryRun = options.dryRun ?? false;
  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";
  const tenantId = await resolveTenantId(tenantSlug);
  const offPeak = isOffPeakHour();
  const errors: string[] = [];

  if (!tenantId && !dryRun) {
    return {
      portal: "gmada",
      recordsFound: 0,
      recordsValid: 0,
      recordsWritten: 0,
      errors: [`Tenant not found: ${tenantSlug}`],
      dryRun,
      offPeak,
    };
  }

  // Determine JSON file path
  // Default to tricity-re/data/manual/gmada.json
  const defaultPath = path.resolve(process.cwd(), "data/manual/gmada.json");
  const filePath = options.file ? path.resolve(process.cwd(), options.file) : defaultPath;

  console.log(`[gmada] Assisted Manual Fallback — reading file: ${filePath}`);

  if (!fs.existsSync(filePath)) {
    // Write a helpful sample file if default path doesn't exist
    if (!options.file) {
      try {
        fs.mkdirSync(path.dirname(defaultPath), { recursive: true });
        const sample: ManualProjectRecord[] = [
          {
            reraNumber: "GMADA-M-0001",
            projectName: "GMADA Eco City I",
            typeOfProject: "Residential Plotted",
            promoterName: "GMADA",
            location: "New Chandigarh",
            address: "Mullanpur, New Chandigarh",
          },
          {
            reraNumber: "GMADA-M-0002",
            projectName: "GMADA IT City",
            typeOfProject: "Mixed Use",
            promoterName: "GMADA",
            location: "SAS Nagar",
            address: "Sector 66-B, Mohali",
          }
        ];
        fs.writeFileSync(defaultPath, JSON.stringify(sample, null, 2), "utf-8");
        console.log(`[gmada] Created template manual file at ${defaultPath}`);
      } catch (err) {
        errors.push(`Failed to create sample file: ${err instanceof Error ? err.message : String(err)}`);
      }
    }

    if (!fs.existsSync(filePath)) {
      return {
        portal: "gmada",
        recordsFound: 0,
        recordsValid: 0,
        recordsWritten: 0,
        errors: [`Manual file not found at ${filePath}. Please populate the file to run the fallback importer.`, ...errors],
        dryRun,
        offPeak,
      };
    }
  }

  let records: ManualProjectRecord[] = [];
  try {
    const raw = fs.readFileSync(filePath, "utf-8");
    records = JSON.parse(raw);
    if (!Array.isArray(records)) {
      throw new Error("JSON root must be an array of records");
    }
  } catch (err) {
    return {
      portal: "gmada",
      recordsFound: 0,
      recordsValid: 0,
      recordsWritten: 0,
      errors: [`Failed to parse manual JSON file: ${err instanceof Error ? err.message : String(err)}`],
      dryRun,
      offPeak,
    };
  }

  console.log(`[gmada] Found ${records.length} records in manual file.`);

  const stagingRecords: StagingProjectInsert[] = records.map((r) => {
    const tid = tenantId ?? "00000000-0000-0000-0000-000000000000";
    const validationErrors: string[] = [];

    if (!r.reraNumber || r.reraNumber.trim().length < 3) {
      validationErrors.push("Missing or invalid RERA/Manual identifier");
    }
    if (!r.projectName || r.projectName.trim().length < 2) {
      validationErrors.push("Missing or too-short project name");
    }

    return {
      tenant_id: tid,
      rera_number: r.reraNumber || `GEN-${Math.random().toString(36).substr(2, 9)}`,
      raw_payload: r as unknown as Record<string, unknown>,
      parsed_name: r.projectName || null,
      parsed_status: r.typeOfProject || null,
      validation_status: validationErrors.length === 0 ? "valid" : "invalid",
      validation_errors: validationErrors.length > 0 ? validationErrors : null,
      source_portal: "gmada",
    };
  });

  const validRecords = stagingRecords.filter((r) => r.validation_status === "valid");

  if (dryRun) {
    console.log(`[gmada] DRY RUN — would write ${validRecords.length} valid records to staging`);
    return {
      portal: "gmada",
      recordsFound: records.length,
      recordsValid: validRecords.length,
      recordsWritten: 0,
      errors,
      dryRun: true,
      offPeak,
    };
  }

  console.log(`[gmada] Writing ${validRecords.length} valid records to staging...`);
  const writeResult = await writeManyStaging(validRecords);
  errors.push(...writeResult.errors.map((e) => `Write: ${e}`));

  console.log(`[gmada] Wrote ${writeResult.inserted} records (${errors.length} errors)`);

  return {
    portal: "gmada",
    recordsFound: records.length,
    recordsValid: validRecords.length,
    recordsWritten: writeResult.inserted,
    errors,
    dryRun: false,
    offPeak,
  };
}
