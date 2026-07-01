export const SCRAPER_CONFIG = {
  userAgent: "TricityRE-Bot/1.0 (+https://newchandigarh.in; data-pipeline)",
  rateLimitMs: 2000,
  offPeakHoursUtc: { start: 18, end: 6 },
  maxRetries: 2,
} as const;

export type PortalId = "psrera" | "gmada";

export const PORTALS: Record<
  PortalId,
  { name: string; baseUrl: string; robotsUrl: string; pdfUrl: string; selectors: Record<string, string> }
> = {
  psrera: {
    name: "PSRERA Punjab",
    baseUrl: "https://rera.punjab.gov.in",
    robotsUrl: "https://rera.punjab.gov.in/robots.txt",
    pdfUrl: "https://rera.punjab.gov.in/pdf/registered-projects/List_of_Registered_Projects.pdf",
    selectors: {
      projectList: "Excel at /reraindex/publicview/projectinfo (download) OR PDF at /pdf/registered-projects/List_of_Registered_Projects.pdf",
      projectDetail: "Excel: Registration Number, Project Name, District Name, Promoter's Name, Address, PIN, Registration Issue Date, Valid Upto. PDF: tabular columns via pdfjs-dist (see psrera/parser.ts)",
      reraNumber: "Excel: Registration Number column. PDF: regex /PBRERA-[A-Z0-9]+-[A-Z]{1,2}\\d{3,}/",
      district: "Excel: District Name column. PDF: tabular column mapping (xMin: 70, xMax: 145)",
      promoter: "Excel: Promoter's Name column. PDF: tabular column (xMin: 145, xMax: 255)",
      status: "Excel: Registration Valid Upto Date determines active/lapsed. PDF: typeOfProject field",
      metadata: "Excel: district, promoter, address, pin_code, website, registration_date, valid_upto all extracted into raw_payload",
    },
  },
  gmada: {
    name: "GMADA",
    baseUrl: "https://gmada.gov.in",
    robotsUrl: "https://gmada.gov.in/robots.txt",
    pdfUrl: "",
    selectors: {
      projectList: "PLACEHOLDER — map in Milestone 3 after M2 approval",
      allotmentList: "PLACEHOLDER",
      priceField: "PLACEHOLDER",
    },
  },
};

export function isOffPeakHour(date = new Date()): boolean {
  const hour = date.getUTCHours();
  const { start, end } = SCRAPER_CONFIG.offPeakHoursUtc;
  if (start > end) return hour >= start || hour < end;
  return hour >= start && hour < end;
}
