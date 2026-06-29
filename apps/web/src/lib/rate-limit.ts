import type { SupabaseClient } from "@supabase/supabase-js";

const RATE_LIMIT = 5;
const RATE_WINDOW_MS = 60_000;

/** In-memory fallback for local dev when Supabase is unavailable. */
const memoryStore = new Map<string, { count: number; reset: number }>();

function isRateLimitedMemory(ip: string): boolean {
  const now = Date.now();
  const entry = memoryStore.get(ip);
  if (!entry || now > entry.reset) {
    memoryStore.set(ip, { count: 1, reset: now + RATE_WINDOW_MS });
    return false;
  }
  entry.count += 1;
  return entry.count > RATE_LIMIT;
}

/**
 * Rate limit by counting recent lead rows for this IP (works across Vercel serverless).
 * Falls back to in-memory only when Supabase is not configured.
 */
export async function isLeadRateLimited(
  ip: string,
  supabase: SupabaseClient | null,
): Promise<boolean> {
  if (!supabase) return isRateLimitedMemory(ip);

  const since = new Date(Date.now() - RATE_WINDOW_MS).toISOString();
  const { count, error } = await supabase
    .from("leads")
    .select("id", { count: "exact", head: true })
    .gte("created_at", since)
    .contains("context", { ip });

  if (error) {
    console.warn("[leads] Rate limit DB check failed, using memory fallback:", error.message);
    return isRateLimitedMemory(ip);
  }

  return (count ?? 0) >= RATE_LIMIT;
}

export { RATE_LIMIT, RATE_WINDOW_MS };
