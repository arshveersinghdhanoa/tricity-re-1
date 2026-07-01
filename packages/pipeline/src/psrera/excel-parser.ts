import fs from "fs";
import path from "path";
import XLSX from "xlsx";
import { type ParserProjectRecord, type ParserResult } from "./types.js";

const RERA_RE = /PBRERA-[A-Z0-9]+-[A-Z]{1,2}\d{3,}/i;

export interface ExcelParseOptions {
  filePath?: string;
  file?: string;
}

export async function parseExcel(options: ExcelParseOptions = {}): Promise<ParserResult> {
  const filePath = options.file ?? options.filePath ?? findExcelFile();
  if (!filePath) {
    return { records: [], pdfDate: "", totalProjects: 0, lapsedProjects: 0, errors: ["No Excel file found in tmp/"] };
  }

  console.log(`[psrera] Reading Excel: ${filePath}`);
  const workbook = XLSX.readFile(filePath);
  const sheetName = workbook.SheetNames[0];
  if (!sheetName) {
    return { records: [], pdfDate: "", totalProjects: 0, lapsedProjects: 0, errors: ["Excel file has no sheets"] };
  }

  const sheet = workbook.Sheets[sheetName];
  const rows: Record<string, string>[] = XLSX.utils.sheet_to_json(sheet);

  console.log(`[psrera] Found ${rows.length} rows in Excel`);

  const records: ParserProjectRecord[] = [];
  const errors: string[] = [];
  let fixCount = 0;

  for (const row of rows) {
    const reraRaw = (row["Registration Number"] ?? "").toString().trim();

    // Fix known typos from PSRERA source
    const reraFixed = reraRaw.replace("PRRERA-", "PBRERA-");
    if (reraFixed !== reraRaw) fixCount++;

    const reraMatch = reraFixed.match(RERA_RE);
    if (!reraMatch) {
      if (reraRaw) errors.push(`Invalid RERA number: ${reraRaw}`);
      continue;
    }

    const reraNumber = reraMatch[0];
    const projectName = (row["Project Name"] ?? "").toString().trim();
    const district = (row["District Name"] ?? "").toString().trim();
    const promoter = (row["Promoter's Name"] ?? "").toString().trim();
    const addr1 = (row["Project Address Line1"] ?? "").toString().trim();
    const addr2 = (row["Project Address Line2"] ?? "").toString().trim();
    const pinRaw = row["PIN Code"];
    const pin = pinRaw ? String(Math.floor(Number(pinRaw))).trim() : "";
    const website = (row["Project Website Web Link, If Any"] ?? "").toString().trim();
    const issueDate = (row["Registration Issue Date"] ?? "").toString().trim();
    const validUpto = (row["Registration Valid Upto Date"] ?? "").toString().trim();

    // Skip projects where valid_upto < registration_date (data entry errors)
    if (issueDate && validUpto) {
      try {
        const dIssue = new Date(issueDate);
        const dValid = new Date(validUpto);
        if (!isNaN(dIssue.getTime()) && !isNaN(dValid.getTime()) && dValid < dIssue) {
          errors.push(`Skipping ${reraNumber}: valid_upto (${validUpto}) < registration_date (${issueDate})`);
          continue;
        }
      } catch {
        // Date parsing failed — include the record anyway
      }
    }

    records.push({
      reraNumber,
      district,
      promoterName: promoter || "Unknown",
      projectName: projectName || reraNumber,
      typeOfProject: "Registered",
      projectLocation: district,
      promoterAddress: [addr1, addr2].filter(Boolean).join(", "),
      promoterContact: pin ? `PIN: ${pin}` : "",
      // Extended fields for metadata
      ...(website ? { website } : {}),
      ...(issueDate ? { registrationDate: issueDate } : {}),
      ...(validUpto ? { validUpto } : {}),
      ...(pin ? { pinCode: pin } : {}),
    } as ParserProjectRecord & { website?: string; registrationDate?: string; validUpto?: string; pinCode?: string });
  }

  if (fixCount > 0) {
    console.log(`[psrera] Fixed ${fixCount} RERA number typos`);
  }

  // Extract date from filename if possible (e.g. ListofProjectRecords_2026-Jul-01-11-02-35.xls)
  const dateMatch = path.basename(filePath).match(/(\d{4})-(\w+)-(\d{2})/);
  const pdfDate = dateMatch ? `${dateMatch[3]}-${dateMatch[2]}-${dateMatch[1]}` : "";

  return {
    records,
    pdfDate,
    totalProjects: records.length,
    lapsedProjects: 0,
    errors,
  };
}

function findExcelFile(): string | null {
  const tmpDir = path.resolve(process.cwd(), "tmp");
  if (!fs.existsSync(tmpDir)) return null;

  const files = fs.readdirSync(tmpDir);
  const excelFile = files.find((f) => /\.(xls|xlsx)$/i.test(f));
  return excelFile ? path.join(tmpDir, excelFile) : null;
}
