export const SCRAPER_CONFIG = {
  userAgent: "TricityRE-Bot/1.0 (+https://newchandigarh.in; data-pipeline)",
  rateLimitMs: 2000,
  offPeakHoursUtc: { start: 18, end: 6 },
  maxRetries: 2,
} as const;

export type PortalId = "psrera" | "gmada";

export const PORTALS: Record<
  PortalId,
  { name: string; baseUrl: string; robotsUrl: string; selectors: Record<string, string> }
> = {
  psrera: {
    name: "PSRERA Punjab",
    baseUrl: "https://rera.punjab.gov.in",
    robotsUrl: "https://rera.punjab.gov.in/robots.txt",
    selectors: {
      projectList: "PLACEHOLDER — map in Milestone 3 after M2 approval",
      projectDetail: "PLACEHOLDER",
      reraNumber: "PLACEHOLDER",
      status: "PLACEHOLDER",
    },
  },
  gmada: {
    name: "GMADA",
    baseUrl: "https://gmada.gov.in",
    robotsUrl: "https://gmada.gov.in/robots.txt",
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
