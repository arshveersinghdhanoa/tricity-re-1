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
      projectList: "PDF at /pdf/registered-projects/List_of_Registered_Projects.pdf (mapped M3)",
      projectDetail: "PDF-parsed — see psrera/parser.ts",
      reraNumber: "PDF-parsed — regex /PBRERA-[A-Z0-9]+-[A-Z]{1,2}\\d{3,}/",
      status: "PDF-parsed — typeOfProject field from tabular PDF",
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
