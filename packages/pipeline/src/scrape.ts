import { downloadPdf, parsePdf, parseExcel, type ParserProjectRecord } from "./psrera/index.js";
import { writeManyStaging, resolveTenantId, type StagingProjectInsert } from "./staging.js";
import { SCRAPER_CONFIG } from "./config.js";
import { isOffPeakHour } from "./config.js";
import { scrapeGmada } from "./gmada/manual.js";

export { scrapeGmada };

export interface ScrapeResult {
  portal: string;
  recordsFound: number;
  recordsValid: number;
  recordsWritten: number;
  errors: string[];
  dryRun: boolean;
  offPeak: boolean;
}

export interface ScrapePsreraOptions {
  dryRun?: boolean;
  tenantId?: string;
  source?: "excel" | "pdf";
  file?: string;
}

export async function scrapePsrera(options: ScrapePsreraOptions = {}): Promise<ScrapeResult> {
  const dryRun = options.dryRun ?? false;
  const source = options.source ?? "excel";
  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";
  const tenantId = await resolveTenantId(tenantSlug);
  if (!tenantId && !dryRun) {
    return { portal: "psrera", recordsFound: 0, recordsValid: 0, recordsWritten: 0, errors: [`Tenant not found: ${tenantSlug}`], dryRun, offPeak: isOffPeakHour() };
  }
  const offPeak = isOffPeakHour();
  const errors: string[] = [];

  console.log(`[psrera] Source: ${source}`);

  let records: ParserProjectRecord[];
  let parseErrors: string[];

  if (source === "excel") {
    const parseResult = await parseExcel({ file: options.file });
    records = parseResult.records;
    parseErrors = parseResult.errors;
    console.log(`[psrera] Excel: ${records.length} records found (date: ${parseResult.pdfDate})`);
  } else {
    console.log(`[psrera] Downloading PDF...`);
    let buffer: Buffer;
    try {
      const result = await downloadPdf();
      buffer = result.buffer;
    } catch (err) {
      return {
        portal: "psrera",
        recordsFound: 0,
        recordsValid: 0,
        recordsWritten: 0,
        errors: [`Download failed: ${err instanceof Error ? err.message : String(err)}`],
        dryRun,
        offPeak,
      };
    }

    console.log(`[psrera] Parsing PDF (${(buffer.length / 1024 / 1024).toFixed(1)} MB)...`);
    const parseResult = await parsePdf(buffer);
    records = parseResult.records;
    parseErrors = parseResult.errors;
    console.log(`[psrera] PDF: ${records.length} records (total: ${parseResult.totalProjects}, lapsed: ${parseResult.lapsedProjects}, date: ${parseResult.pdfDate})`);
  }

  errors.push(...parseErrors.map((e) => `Parse: ${e}`));

  const stagingRecords: StagingProjectInsert[] = records.map((r) => buildStagingRecord(r, tenantId));

  const validRecords = stagingRecords.filter((r) => r.validation_status === "valid");

  if (dryRun) {
    console.log(`[psrera] DRY RUN — would write ${validRecords.length} valid records to staging`);
    if (validRecords.length > 0) {
      console.log(`[psrera] Sample: ${validRecords.slice(0, 3).map((r) => `${r.rera_number} (${r.parsed_name})`).join(", ")}`);
    }
    return {
      portal: "psrera",
      recordsFound: records.length,
      recordsValid: validRecords.length,
      recordsWritten: 0,
      errors,
      dryRun: true,
      offPeak,
    };
  }

  if (!offPeak) {
    console.warn(`[psrera] WARNING: Running outside off-peak hours (${SCRAPER_CONFIG.offPeakHoursUtc.start}:00-${SCRAPER_CONFIG.offPeakHoursUtc.end}:00 UTC)`);
  }

  console.log(`[psrera] Writing ${validRecords.length} valid records to staging...`);
  const writeResult = await writeManyStaging(validRecords);
  errors.push(...writeResult.errors.map((e) => `Write: ${e}`));

  console.log(`[psrera] Wrote ${writeResult.inserted} records (${errors.length} errors)`);

  return {
    portal: "psrera",
    recordsFound: records.length,
    recordsValid: validRecords.length,
    recordsWritten: writeResult.inserted,
    errors,
    dryRun: false,
    offPeak,
  };
}

function buildStagingRecord(r: ParserProjectRecord, tenantId: string | null): StagingProjectInsert {
  const tid = tenantId ?? "00000000-0000-0000-0000-000000000000";
  const validationErrors: string[] = [];

  if (!r.reraNumber || !/^PBRERA-/.test(r.reraNumber)) {
    validationErrors.push("Missing or invalid RERA number");
  }

  if (!r.projectName || r.projectName.length < 2) {
    validationErrors.push("Missing or too-short project name");
  }

  return {
    tenant_id: tid,
    rera_number: r.reraNumber,
    raw_payload: r as unknown as Record<string, unknown>,
    parsed_name: r.projectName || null,
    parsed_status: r.typeOfProject || null,
    validation_status: validationErrors.length === 0 ? "valid" : "invalid",
    validation_errors: validationErrors.length > 0 ? validationErrors : null,
    source_portal: "psrera",
  };
}
