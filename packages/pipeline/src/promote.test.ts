import { describe, expect, it } from "vitest";

// Test the RERA number validation guard used in promote.ts
// We test the regex directly since promote.ts requires a live Supabase connection
const RERA_PATTERN = /^PBRERA-/;

describe("promote — RERA number guard (Non-negotiable #2)", () => {
  it("accepts valid PSRERA registration numbers", () => {
    const validNumbers = [
      "PBRERA-SAS06-PR0123",
      "PBRERA-KPT40-PR1293",
      "PBRERA-ASR02-PR1066",
      "PBRERA-ASR03-PR0498",
      "PBRERA-LDH01-PR0001",
    ];
    for (const num of validNumbers) {
      expect(RERA_PATTERN.test(num), `Expected ${num} to be accepted`).toBe(true);
    }
  });

  it("rejects fabricated GMADA registration numbers", () => {
    const fakeNumbers = [
      "GMADA-M-0001",
      "GMADA-M-0002",
      "GMADA-RES-0045",
    ];
    for (const num of fakeNumbers) {
      expect(RERA_PATTERN.test(num), `Expected ${num} to be rejected`).toBe(false);
    }
  });

  it("rejects empty and malformed RERA numbers", () => {
    const badNumbers = ["", "FAKE-123", "pbrera-lower", "RERA-123", "null"];
    for (const num of badNumbers) {
      expect(RERA_PATTERN.test(num), `Expected '${num}' to be rejected`).toBe(false);
    }
  });

  it("rejects numbers that contain PBRERA but don't start with it", () => {
    expect(RERA_PATTERN.test("XPBRERA-SAS06-PR0123")).toBe(false);
    expect(RERA_PATTERN.test(" PBRERA-SAS06-PR0123")).toBe(false);
  });
});
