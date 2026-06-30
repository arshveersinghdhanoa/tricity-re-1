import { describe, expect, it } from "vitest";
import { validateStagingPriceEntry } from "./price-validation.js";

describe("price validation (Non-negotiable #1)", () => {
  it("rejects verified transacted without source", () => {
    const err = validateStagingPriceEntry(
      {
        reraNumber: "PBRERA-SAS06-PR0123",
        priceType: "transacted",
        amount: 4000,
        verified: true,
        source: null,
      },
      "Entry 0",
    );
    expect(err).toContain("verified=true requires");
  });

  it("accepts asking price without source", () => {
    const err = validateStagingPriceEntry(
      {
        reraNumber: "PBRERA-SAS06-PR0123",
        priceType: "asking",
        amount: 4200,
        verified: false,
        source: null,
      },
      "Entry 0",
    );
    expect(err).toBeNull();
  });
});
