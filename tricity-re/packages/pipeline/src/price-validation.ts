import type { StagingPriceEntry } from "./staging-prices.js";

export function validateStagingPriceEntry(e: StagingPriceEntry, label: string): string | null {
  const errs: string[] = [];

  if (!e.reraNumber || !/^PBRERA-/.test(e.reraNumber)) {
    errs.push(`Invalid RERA number: ${e.reraNumber}`);
  }
  if (!["asking", "transacted"].includes(e.priceType)) {
    errs.push(`Invalid priceType: ${e.priceType}`);
  }
  if (typeof e.amount !== "number" || e.amount <= 0) {
    errs.push(`Invalid amount: ${e.amount}`);
  }
  if (e.verified && (!e.source || e.source.trim().length === 0)) {
    errs.push("verified=true requires a non-empty source (Non-negotiable #1)");
  }

  return errs.length > 0 ? `${label}: ${errs.join("; ")}` : null;
}

export function partitionValidStagingEntries(
  entries: StagingPriceEntry[],
): { valid: StagingPriceEntry[]; errors: string[] } {
  const valid: StagingPriceEntry[] = [];
  const errors: string[] = [];

  for (let i = 0; i < entries.length; i++) {
    const err = validateStagingPriceEntry(entries[i], `Entry ${i}`);
    if (err) errors.push(err);
    else valid.push(entries[i]);
  }

  return { valid, errors };
}
