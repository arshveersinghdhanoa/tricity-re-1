import { describe, expect, it } from "vitest";
import { importPrices } from "./prices.js";
import path from "path";
import fs from "fs";
import os from "os";

describe("price import", () => {
  it("returns Supabase error when credentials are not configured", async () => {
    // Save and clear env vars to ensure Supabase is not configured
    const savedUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
    const savedKey = process.env.SUPABASE_SERVICE_ROLE_KEY;
    delete process.env.NEXT_PUBLIC_SUPABASE_URL;
    delete process.env.SUPABASE_SERVICE_ROLE_KEY;

    const result = await importPrices("nonexistent/path/prices.json");
    expect(result.imported).toBe(0);
    expect(result.errors.length).toBeGreaterThan(0);
    expect(result.errors[0]).toContain("Supabase not configured");

    // Restore env vars
    if (savedUrl) process.env.NEXT_PUBLIC_SUPABASE_URL = savedUrl;
    if (savedKey) process.env.SUPABASE_SERVICE_ROLE_KEY = savedKey;
  });

  it("returns zero imports and an error for any file when no DB connection", async () => {
    // Create a valid JSON file but without Supabase
    const tmpDir = fs.mkdtempSync(path.join(os.tmpdir(), "price-test-"));
    const tmpFile = path.join(tmpDir, "valid.json");
    fs.writeFileSync(tmpFile, JSON.stringify([
      {
        reraNumber: "PBRERA-TEST-PR0001",
        prices: [
          { priceType: "asking", amount: 5000, verified: false, source: null }
        ]
      }
    ]));

    const savedUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
    const savedKey = process.env.SUPABASE_SERVICE_ROLE_KEY;
    delete process.env.NEXT_PUBLIC_SUPABASE_URL;
    delete process.env.SUPABASE_SERVICE_ROLE_KEY;

    const result = await importPrices(tmpFile);
    expect(result.imported).toBe(0);
    expect(result.errors[0]).toContain("Supabase not configured");

    if (savedUrl) process.env.NEXT_PUBLIC_SUPABASE_URL = savedUrl;
    if (savedKey) process.env.SUPABASE_SERVICE_ROLE_KEY = savedKey;

    fs.unlinkSync(tmpFile);
    fs.rmdirSync(tmpDir);
  });

  it("PriceInput schema matches the expected JSON format", () => {
    // Validate the sample data/prices.json matches the expected schema
    const samplePath = path.resolve(process.cwd(), "../../data/prices.json");
    if (fs.existsSync(samplePath)) {
      const data = JSON.parse(fs.readFileSync(samplePath, "utf8"));
      expect(Array.isArray(data)).toBe(true);
      for (const record of data) {
        expect(record).toHaveProperty("reraNumber");
        expect(typeof record.reraNumber).toBe("string");
        expect(record.reraNumber).toMatch(/^PBRERA-/);
        expect(Array.isArray(record.prices)).toBe(true);
        for (const p of record.prices) {
          expect(["asking", "transacted"]).toContain(p.priceType);
          expect(typeof p.amount).toBe("number");
          expect(typeof p.verified).toBe("boolean");
        }
      }
    }
  });
});

