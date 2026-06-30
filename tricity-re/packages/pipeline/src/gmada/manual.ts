import fs from "fs";
import path from "path";
import { createHash } from "crypto";
import { resolveTenantId, writeManyStaging, type StagingProjectInsert } from "../staging.js";
import { isOffPeakHour } from "../config.js";

export interface ManualProjectRecord {
  /** Official document URL, PDF page reference, or GMADA publication ID — required. */
  sourceReference: string;
  projectName: string;
  typeOfProject?: string;
  promoterName?: string;
  location?: string;
  address?: string;
  contact?: string;
  /** Optional. Only ^PBRERA-… numbers can be promoted to production projects. */
  pbreraNumber?: string;
}

/** @deprecated Legacy field — rejected on import. Use sourceReference + pbreraNumber instead. */
type LegacyRecord = ManualProjectRecord & { reraNumber?: string };

const FABRICATED_RERA = /^GMADA-[A-Z]-\d{4}$/;

function stagingKey(sourceReference: string): string {
  const hash = createHash("sha256").update(sourceReference.trim()).digest("hex").slice(0, 16);
  return `GMADA-SRC-${hash}`;
}

function normalizeRecord(raw: LegacyRecord): { record: ManualProjectRecord | null; error?: string } {
  if (raw.reraNumber && FABRICATED_RERA.test(raw.reraNumber)) {
    return {
      record: null,
      error: `Rejected fabricated identifier ${raw.reraNumber}. Use sourceReference and optional pbreraNumber (^PBRERA-…).`,
    };
  }

  const sourceReference = raw.sourceReference?.trim();
  if (!sourceReference || sourceReference.length < 8) {
    return { record: null, error: "Missing sourceReference (official document URL or citation, min 8 chars)." };
  }

  const projectName = raw.projectName?.trim();
  if (!projectName || projectName.length < 2) {
    return { record: null, error: "Missing or too-short projectName." };
  }

  return {
    record: {
      sourceReference,
      projectName,
      typeOfProject: raw.typeOfProject,
      promoterName: raw.promoterName,
      location: raw.location,
      address: raw.address,
      contact: raw.contact,
      pbreraNumber: raw.pbreraNumber?.trim(),
    },
  };
}

/**
 * GMADA data import — Client-supplied verified records only.
 *
 * Automated live scraping is NOT implemented (M2 recommendation B: PDF/manual workflow).
 * Non-negotiable #2: no fabricated RERA numbers or sample colonies.
 * Non-negotiable #4: writes to staging only.
 */
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

  const defaultPath = path.resolve(process.cwd(), "data/manual/gmada.json");
  const filePath = options.file ? path.resolve(process.cwd(), options.file) : defaultPath;

  if (!fs.existsSync(filePath)) {
    return {
      portal: "gmada",
      recordsFound: 0,
      recordsValid: 0,
      recordsWritten: 0,
      errors: [
        `GMADA import file not found: ${filePath}`,
        "Populate with Client-verified records (see data/manual/README.md). Live GMADA scraping is deferred per docs/milestone-2-report.md.",
      ],
      dryRun,
      offPeak,
    };
  }

  let rawRecords: LegacyRecord[];
  try {
    rawRecords = JSON.parse(fs.readFileSync(filePath, "utf-8"));
    if (!Array.isArray(rawRecords)) throw new Error("JSON root must be an array");
  } catch (err) {
    return {
      portal: "gmada",
      recordsFound: 0,
      recordsValid: 0,
      recordsWritten: 0,
      errors: [`Failed to parse GMADA import file: ${err instanceof Error ? err.message : String(err)}`],
      dryRun,
      offPeak,
    };
  }

  if (rawRecords.length === 0) {
    return {
      portal: "gmada",
      recordsFound: 0,
      recordsValid: 0,
      recordsWritten: 0,
      errors: ["GMADA import file is empty. Add Client-verified records before running import."],
      dryRun,
      offPeak,
    };
  }

  const records: ManualProjectRecord[] = [];
  for (const raw of rawRecords) {
    const { record, error } = normalizeRecord(raw);
    if (error) errors.push(error);
    else if (record) records.push(record);
  }

  const stagingRecords: StagingProjectInsert[] = records.map((r) => {
    const tid = tenantId ?? "00000000-0000-0000-0000-000000000000";
    const validationErrors: string[] = [];

    const reraForStaging =
      r.pbreraNumber && /^PBRERA-/.test(r.pbreraNumber) ? r.pbreraNumber : stagingKey(r.sourceReference);

    if (r.pbreraNumber && !/^PBRERA-/.test(r.pbreraNumber)) {
      validationErrors.push(`pbreraNumber must match ^PBRERA-… (got ${r.pbreraNumber})`);
    }

    if (!r.pbreraNumber) {
      validationErrors.push(
        "No PBRERA number — staging only; will not promote to production until Client links a verified PBRERA ID.",
      );
    }

    return {
      tenant_id: tid,
      rera_number: reraForStaging,
      raw_payload: r as unknown as Record<string, unknown>,
      parsed_name: r.projectName,
      parsed_status: r.typeOfProject || null,
      validation_status: validationErrors.some((e) => e.includes("must match")) ? "invalid" : "valid",
      validation_errors: validationErrors.length > 0 ? validationErrors : null,
      source_portal: "gmada",
    };
  });

  const validRecords = stagingRecords.filter((r) => r.validation_status === "valid");

  console.log(
    `[gmada] Client import: ${records.length} record(s) parsed, ${validRecords.length} valid for staging (${errors.length} rejected).`,
  );

  if (dryRun) {
    console.log(`[gmada] DRY RUN — would write ${validRecords.length} record(s) to staging`);
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

  const writeResult = await writeManyStaging(validRecords);
  errors.push(...writeResult.errors.map((e) => `Write: ${e}`));

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
