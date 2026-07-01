import type { PriceRecord } from "./types.js";

export type PriceDisplayMode = "factual-transacted" | "indicative";

export interface PriceDisplay {
  mode: PriceDisplayMode;
  label: string;
  amount: number;
  totalAmount: number | null;
  area: number | null;
  areaUnit: string | null;
  currency: string;
  unit: string;
  source: string | null;
}

/** Non-negotiable #1: transacted prices are factual only when verified + sourced. */
export function getPriceDisplayMode(price: PriceRecord): PriceDisplayMode {
  if (
    price.priceType === "transacted" &&
    price.verified === true &&
    price.source !== null &&
    price.source.trim().length > 0
  ) {
    return "factual-transacted";
  }
  return "indicative";
}

export function formatPriceDisplay(price: PriceRecord): PriceDisplay {
  const mode = getPriceDisplayMode(price);
  const areaVal = price.area ?? null;
  const areaUnitVal = price.areaUnit ?? null;
  const total = areaVal ? Math.round(price.amount * areaVal) : null;
  return {
    mode,
    label: mode === "factual-transacted" ? "Verified transacted price" : "Indicative",
    amount: price.amount,
    totalAmount: total,
    area: areaVal,
    areaUnit: areaUnitVal,
    currency: price.currency ?? "INR",
    unit: price.unit ?? "sqft",
    source: mode === "factual-transacted" ? price.source : null,
  };
}

export function canShowAsFactualTransacted(price: PriceRecord): boolean {
  return getPriceDisplayMode(price) === "factual-transacted";
}
