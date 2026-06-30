import { PORTALS, SCRAPER_CONFIG, type PortalId } from "./config.js";

export interface InspectResult {
  portal: PortalId;
  baseUrl: string;
  robotsUrl: string;
  robotsStatus: string;
  legalReview: {
    permissible: boolean;
    details: string;
  };
  technicalInspection: {
    platform: string;
    antiBotMeasures: string[];
    dataSources: string[];
  };
  recommendation: {
    category: "A" | "B" | "C";
    details: string;
    milestone3Scoping: string;
  };
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

  let robotsStatus = "not fetched";
  try {
    const res = await fetch(def.robotsUrl, {
      headers: { "User-Agent": SCRAPER_CONFIG.userAgent },
      signal: AbortSignal.timeout(10_000),
    });
    robotsStatus = res.ok ? `HTTP ${res.status}` : `HTTP ${res.status} (error)`;
  } catch (err) {
    robotsStatus = `fetch failed: ${err instanceof Error ? err.message : "unknown"}`;
  }

  const legalReview = portal === "psrera"
    ? {
        permissible: true,
        details: "Disclaimer explicitly allows reproduction of portal materials free of charge in any format or media, subject to accurate reproduction and source acknowledgment. Terms of use contain no automated access restrictions.",
      }
    : {
        permissible: true,
        details: "Standard website policies and copyright guidelines contain no crawling, scraping, or automated access prohibitions. Standard IT Act clauses prohibit unauthorized uploads/modifications only.",
      };

  const technicalInspection = portal === "psrera"
    ? {
        platform: "ASP.NET MVC",
        antiBotMeasures: ["CAPTCHA required on search forms", "No Cloudflare/IP blocking observed"],
        dataSources: ["Open list of registered projects via PDF directory at /pdf/registered-projects/List_of_Registered_Projects.pdf"],
      }
    : {
        platform: "Drupal 7",
        antiBotMeasures: ["No CAPTCHA on standard site search", "No Cloudflare/IP blocking observed"],
        dataSources: ["Colonies page NOC PDF", "Master Plan PDF layouts", "GMADA IPMS Portal (requires separate credentials/audit)"],
      };

  const recommendation = portal === "psrera"
    ? {
        category: "A" as const,
        details: "Buildable as designed. Leverage the open projects list PDF as the primary source to bypass frontend search CAPTCHA. Store in staging and validate.",
        milestone3Scoping: "3 days (PDF Scraper) + 3 days (Pipeline framework) + 4 days (Enrichment, optional P1)",
      }
    : {
        category: "B" as const,
        details: "Buildable with stated changes/effort. Prioritize PDF parsing of static documents and land-use maps; Drupal site search can be mapped but expects text variation.",
        milestone3Scoping: "4 days (Master Plan PDFs) + 5-7 days (IPMS integration, optional P2) + 2 days (Testing)",
      };

  return {
    portal,
    baseUrl: def.baseUrl,
    robotsUrl: def.robotsUrl,
    robotsStatus,
    legalReview,
    technicalInspection,
    recommendation,
    selectorsMapped: placeholders.length === 0,
    placeholderSelectors: placeholders,
    config: SCRAPER_CONFIG,
    note: [
      `robots.txt: ${robotsStatus}.`,
      "See docs/milestone-2-report.md for full ToS/robots review.",
      "Scrapers must write to staging tables only (Non-negotiable #4).",
    ].join(" "),
  };
}

export async function inspectAll(): Promise<InspectResult[]> {
  return Promise.all([inspectPortal("psrera"), inspectPortal("gmada")]);
}
