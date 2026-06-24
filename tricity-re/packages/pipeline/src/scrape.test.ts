import { describe, expect, it } from "vitest";
import { scrapeGmada } from "./gmada/manual.js";
import path from "path";
import fs from "fs";

describe("scrapeGmada manual fallback scraper", () => {
  it("runs correctly in dry-run mode and creates template file if missing", async () => {
    // Determine the path to the template file
    const defaultPath = path.resolve(process.cwd(), "data/manual/gmada.json");
    
    // Run the manual scraper dry-run
    const result = await scrapeGmada({ dryRun: true });
    
    // Verify results
    expect(result.portal).toBe("gmada");
    expect(result.dryRun).toBe(true);
    expect(result.recordsFound).toBeGreaterThanOrEqual(0);
    expect(result.recordsValid).toBe(result.recordsFound);
    expect(result.errors).toEqual([]);
    
    // Verify template file was generated
    expect(fs.existsSync(defaultPath)).toBe(true);
  });
});
