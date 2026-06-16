import { describe, expect, it } from "vitest";
import { HOT_LEAD_THRESHOLD, scoreLead } from "./leads.js";

describe("lead scoring", () => {
  it("flags hot leads at threshold", () => {
    const result = scoreLead({
      phone: "9876543210",
      name: "Test Buyer",
      email: "buyer@example.com",
      projectSlug: "sample-project",
      message: "Interested in a 3BHK with good connectivity",
      budget: 1_00_00_000,
      timeline: "immediate",
    });
    expect(result.score).toBeGreaterThanOrEqual(HOT_LEAD_THRESHOLD);
    expect(result.isHot).toBe(true);
  });

  it("does not flag low-intent leads as hot", () => {
    const result = scoreLead({ phone: "9876543210" });
    expect(result.isHot).toBe(false);
  });
});
