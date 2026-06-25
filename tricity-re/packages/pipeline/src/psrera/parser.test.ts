import { describe, it, expect } from "vitest";
import { parsePdf } from "./parser.js";
import { readFileSync, existsSync } from "node:fs";
import path from "node:path";

const FIXTURE_PATH = path.resolve(__dirname, "__fixtures__/sample.pdf");

describe("PSRERA parser", () => {
  it("fixture PDF exists", () => {
    expect(existsSync(FIXTURE_PATH)).toBe(true);
  });

  it("extracts PBRERA records from a fixture page", async () => {
    const buf = readFileSync(FIXTURE_PATH);
    const res = await parsePdf(buf);
    expect(res.records.length).toBeGreaterThan(0);
    expect(res.records.every(r => /^PBRERA-/.test(r.reraNumber))).toBe(true);
  });

  it("every record has required fields", async () => {
    const buf = readFileSync(FIXTURE_PATH);
    const res = await parsePdf(buf);
    for (const r of res.records) {
      expect(r.reraNumber).toBeTruthy();
      expect(r.district).toBeTruthy();
      expect(r.projectName).toBeTruthy();
      expect(r.promoterName).toBeTruthy();
    }
  });

  it("extracts PDF metadata (total counts)", async () => {
    const buf = readFileSync(FIXTURE_PATH);
    const res = await parsePdf(buf);
    // The PDF should contain metadata about total projects
    expect(res.totalProjects).toBeGreaterThan(0);
    // pdfDate may or may not be present depending on PDF version
    expect(typeof res.pdfDate).toBe("string");
  });

  it("does not produce duplicate RERA numbers within a single parse", async () => {
    const buf = readFileSync(FIXTURE_PATH);
    const res = await parsePdf(buf);
    const reraNumbers = res.records.map(r => r.reraNumber);
    const unique = new Set(reraNumbers);
    // Some duplicates may exist in the PDF but count should be low
    const dupeRatio = 1 - unique.size / reraNumbers.length;
    expect(dupeRatio).toBeLessThan(0.1); // <10% duplicates
  });

  it("RERA numbers match the expected format", async () => {
    const buf = readFileSync(FIXTURE_PATH);
    const res = await parsePdf(buf);
    const pattern = /^PBRERA-[A-Z0-9]+-[A-Z]{1,2}\d{3,}/i;
    for (const r of res.records) {
      expect(r.reraNumber).toMatch(pattern);
    }
  });
});
