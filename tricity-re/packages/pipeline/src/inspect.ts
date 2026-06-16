import { PORTALS, SCRAPER_CONFIG, type PortalId } from "./config.js";

export interface InspectResult {
  portal: PortalId;
  baseUrl: string;
  robotsUrl: string;
  selectorsMapped: boolean;
  placeholderSelectors: string[];
  config: typeof SCRAPER_CONFIG;
  note: string;
}

export async function inspectPortal(portal: PortalId): Promise<InspectResult> {
  const def = PORTALS[portal];
  const placeholders = Object.entries(def.selectors)
    .filter(([, v]) => v.startsWith("PLACEHOLDER"))
    .map(([k]) => k);

  let robotsStatus = "not fetched (Milestone 2 deliverable)";
  try {
    const res = await fetch(def.robotsUrl, {
      headers: { "User-Agent": SCRAPER_CONFIG.userAgent },
      signal: AbortSignal.timeout(10_000),
    });
    robotsStatus = res.ok ? `HTTP ${res.status}` : `HTTP ${res.status} (error)`;
  } catch (err) {
    robotsStatus = `fetch failed: ${err instanceof Error ? err.message : "unknown"}`;
  }

  return {
    portal,
    baseUrl: def.baseUrl,
    robotsUrl: def.robotsUrl,
    selectorsMapped: placeholders.length === 0,
    placeholderSelectors: placeholders,
    config: SCRAPER_CONFIG,
    note: [
      `robots.txt: ${robotsStatus}`,
      "Selectors are placeholders by design until Milestone 2 review is approved.",
      "Do not run production scraping before ToS/robots review (Non-negotiable #6).",
    ].join(" "),
  };
}

export async function inspectAll(): Promise<InspectResult[]> {
  return Promise.all([inspectPortal("psrera"), inspectPortal("gmada")]);
}
