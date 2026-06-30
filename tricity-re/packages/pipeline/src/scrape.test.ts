import { describe, expect, it } from "vitest";
import { scrapeGmada } from "./gmada/manual.js";

describe("scrapeGmada client import", () => {
  it("rejects empty import file without fabricating sample data", async () => {
    const result = await scrapeGmada({ dryRun: true });
    expect(result.portal).toBe("gmada");
    expect(result.recordsFound).toBe(0);
    expect(result.errors.some((e) => e.toLowerCase().includes("empty"))).toBe(true);
  });

  it("rejects legacy fabricated GMADA RERA identifiers", async () => {
    const result = await scrapeGmada({
      dryRun: true,
      file: "data/manual/gmada-fixture-fabricated.json",
    });
    expect(result.recordsFound).toBe(0);
    expect(result.errors.some((e) => e.includes("fabricated"))).toBe(true);
  });
});
