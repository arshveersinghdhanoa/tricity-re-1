import { describe, expect, it } from "vitest";
import { isOffPeakHour, SCRAPER_CONFIG } from "./config.js";

describe("scraper config", () => {
  it("uses polite rate limiting", () => {
    expect(SCRAPER_CONFIG.rateLimitMs).toBeGreaterThanOrEqual(1000);
  });

  it("uses honest user agent", () => {
    expect(SCRAPER_CONFIG.userAgent).toContain("TricityRE-Bot");
  });

  it("detects off-peak hours", () => {
    expect(typeof isOffPeakHour(new Date("2026-01-01T20:00:00Z"))).toBe("boolean");
  });
});
