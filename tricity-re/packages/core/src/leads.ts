import type { LeadInput, LeadScoreResult } from "./types.js";

const HOT_LEAD_THRESHOLD = 60;

/** Lead scoring rules — hot leads at score >= 60 (Milestone 4). */
export function scoreLead(input: LeadInput): LeadScoreResult {
  let score = 0;

  const digits = input.phone.replace(/\D/g, "");
  if (digits.length >= 10) score += 20;

  if (input.name && input.name.trim().length >= 2) score += 10;
  if (input.email && input.email.includes("@")) score += 10;
  if (input.projectSlug) score += 15;
  if (input.message && input.message.trim().length >= 20) score += 10;

  if (input.budget && input.budget >= 50_00_000) score += 15;

  switch (input.timeline) {
    case "immediate":
      score += 25;
      break;
    case "3months":
      score += 15;
      break;
    case "6months":
      score += 5;
      break;
    default:
      break;
  }

  return {
    score,
    isHot: score >= HOT_LEAD_THRESHOLD,
  };
}

export { HOT_LEAD_THRESHOLD };
