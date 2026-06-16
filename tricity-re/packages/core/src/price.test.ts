import { describe, expect, it } from "vitest";
import { canShowAsFactualTransacted, formatPriceDisplay, getPriceDisplayMode } from "./price.js";

describe("price display (Non-negotiable #1)", () => {
  it("shows verified transacted price as factual when verified and sourced", () => {
    const result = getPriceDisplayMode({
      priceType: "transacted",
      amount: 5000,
      verified: true,
      source: "PSRERA public record",
    });
    expect(result).toBe("factual-transacted");
    expect(canShowAsFactualTransacted({
      priceType: "transacted",
      amount: 5000,
      verified: true,
      source: "PSRERA public record",
    })).toBe(true);
  });

  it("labels unverified transacted price as indicative", () => {
    expect(getPriceDisplayMode({
      priceType: "transacted",
      amount: 5000,
      verified: false,
      source: null,
    })).toBe("indicative");
  });

  it("labels verified transacted without source as indicative", () => {
    expect(getPriceDisplayMode({
      priceType: "transacted",
      amount: 5000,
      verified: true,
      source: null,
    })).toBe("indicative");
  });

  it("always labels asking prices as indicative", () => {
    const display = formatPriceDisplay({
      priceType: "asking",
      amount: 4500,
      verified: true,
      source: "broker",
    });
    expect(display.mode).toBe("indicative");
    expect(display.label).toBe("Indicative");
    expect(display.source).toBeNull();
  });
});
