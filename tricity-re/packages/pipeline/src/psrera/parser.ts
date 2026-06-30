import { type ParserProjectRecord, type ParserResult } from "./types.js";

const RERA_RE = /PBRERA-[A-Z0-9]+-[A-Z]{1,2}\d{3,}/i;

const KNOWN_DISTRICTS = [
  "Amritsar", "Barnala", "Bathinda", "Faridkot", "Fatehgarh Sahib", "Fazilka",
  "Ferozepur", "Gurdaspur", "Hoshiarpur", "Jalandhar", "Kapurthala", "Ludhiana",
  "Mansa", "Moga", "Mohali", "Muktsar", "Pathankot", "Patiala", "Rupnagar",
  "SAS Nagar", "Sangrur", "SBS Nagar", "Sri Muktsar Sahib", "Tarn Taran",
  "Malerkotla",
];

const COLUMNS = [
  { name: "sno", xMin: 0, xMax: 70 },
  { name: "district", xMin: 70, xMax: 145 },
  { name: "promoter", xMin: 145, xMax: 255 },
  { name: "project", xMin: 255, xMax: 360 },
  { name: "rera", xMin: 360, xMax: 450 },
  { name: "type", xMin: 450, xMax: 530 },
  { name: "location", xMin: 530, xMax: 660 },
  { name: "address", xMin: 660, xMax: 790 },
  { name: "contact", xMin: 790, xMax: 9999 },
];

export async function parsePdf(buffer: Buffer): Promise<ParserResult> {
  const { getDocument } = await import("pdfjs-dist/legacy/build/pdf.mjs");

  const data = new Uint8Array(buffer);
  const doc = await getDocument({ data }).promise;

  const errors: string[] = [];
  let allRecords: ParserProjectRecord[] = [];
  let pdfDate = "";
  let totalProjects = 0;
  let lapsedProjects = 0;

  for (let pageNum = 1; pageNum <= doc.numPages; pageNum++) {
    const page = await doc.getPage(pageNum);
    const raw = await page.getTextContent();

    const items: Array<{ str: string; x: number; y: number }> = [];
    for (const item of raw.items) {
      const t = item as { str?: string; transform?: number[] };
      const str = (t.str || "").trim();
      if (!str || !t.transform) continue;
      items.push({ str, x: t.transform[4], y: t.transform[5] });
    }

    items.sort((a, b) => b.y - a.y || a.x - b.x);

    const rows: Array<Array<{ str: string; x: number }>> = [];
    let currentY = -1;
    let currentRow: Array<{ str: string; x: number }> = [];

    for (const item of items) {
      if (currentY < 0) { currentY = item.y; }
      if (Math.abs(item.y - currentY) > 4) {
        if (currentRow.length > 0) {
          rows.push(currentRow.sort((a, b) => a.x - b.x));
        }
        currentRow = [];
        currentY = item.y;
      }
      currentRow.push({ str: item.str, x: item.x });
    }
    if (currentRow.length > 0) rows.push(currentRow.sort((a, b) => a.x - b.x));

    const pageRecords = extractRecordsFromRows(rows);
    allRecords = allRecords.concat(pageRecords);

    if (!pdfDate) {
      const text = items.map((i) => i.str).join(" ");
      const m = text.match(/as on\s+(\d{1,2}[-]\w+[-]\d{4})/i);
      if (m) pdfDate = m[1];
      const tm = text.match(/Total Registered Projects:\s*(\d+)/i);
      if (tm) totalProjects = parseInt(tm[1], 10);
      const lm = text.match(/Registration Lapsed Projects:\s*(\d+)/i);
      if (lm) lapsedProjects = parseInt(lm[1], 10);
    }
  }

  await doc.cleanup();
  return { records: allRecords, pdfDate, totalProjects, lapsedProjects, errors };
}

function extractRecordsFromRows(rows: Array<Array<{ str: string; x: number }>>): ParserProjectRecord[] {
  const records: ParserProjectRecord[] = [];
  let buffer: Array<Array<{ str: string; x: number }>> = [];

  function getDistrict(row: Array<{ str: string; x: number }>): string {
    for (const item of row) {
      for (const d of KNOWN_DISTRICTS) {
        if (item.str.startsWith(d)) return d;
      }
    }
    return "";
  }

  function hasDistrict(row: Array<{ str: string; x: number }>): boolean {
    return getDistrict(row).length > 0;
  }

  function hasRera(row: Array<{ str: string; x: number }>): boolean {
    return row.some((i) => /PBRERA/i.test(i.str));
  }

  function hasSno(row: Array<{ str: string; x: number }>): boolean {
    return row.some((i) => /^\d+$/.test(i.str) && i.x < 70);
  }

  function isHeaderOrFooter(row: Array<{ str: string; x: number }>): boolean {
    const text = row.map((i) => i.str).join(" ");
    return /^District Name Promoter/.test(text) ||
      /^List of Registered/.test(text) ||
      /^Page \d+ of \d+/.test(text) ||
      /^Updated on:/.test(text);
  }

  function isDistrictTotal(row: Array<{ str: string; x: number }>): boolean {
    const text = row.map((i) => i.str).join(" ");
    return /Total\s*:\s*\d+/.test(text) && row.length <= 4;
  }

  function flush(): void {
    if (buffer.length === 0) return;

    const cells: string[] = new Array(COLUMNS.length).fill("");

    for (const row of buffer) {
      for (const item of row) {
        for (let c = 0; c < COLUMNS.length; c++) {
          const col = COLUMNS[c];
          if (item.x >= col.xMin && item.x < col.xMax) {
            if (cells[c]) cells[c] += " ";
            cells[c] += item.str;
            break;
          }
        }
      }
    }

    const reraRaw = (cells[COLUMNS.findIndex((c) => c.name === "rera")] || "").trim();
    const reraMatch = reraRaw.replace(/\s+/g, "").match(RERA_RE);
    if (!reraMatch) {
      buffer = [];
      return;
    }

    const reraNumber = reraMatch[0];
    const get = (name: string): string => {
      const idx = COLUMNS.findIndex((c) => c.name === name);
      return idx >= 0 ? (cells[idx] || "").trim() : "";
    };

    const district = get("district").replace(/\s+Total\s*:\s*\d+$/, "").trim();
    if (!district) {
      buffer = [];
      return;
    }

    const record: ParserProjectRecord = {
      reraNumber,
      district,
      promoterName: get("promoter") || "Unknown",
      projectName: get("project") || reraNumber,
      typeOfProject: get("type") || "Unknown",
      projectLocation: get("location"),
      promoterAddress: get("address"),
      promoterContact: get("contact"),
    };

    records.push(record);
    buffer = [];
  }

  for (const row of rows) {
    if (isHeaderOrFooter(row)) continue;
    if (isDistrictTotal(row)) { flush(); continue; }

    if (hasDistrict(row)) {
      if (buffer.length > 0 && hasRera(row)) {
        flush();
      }
      buffer.push(row);
    } else if (buffer.length > 0) {
      buffer.push(row);
    }
  }

  flush();
  return records;
}
