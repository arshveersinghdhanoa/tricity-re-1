import { createClient, type SupabaseClient } from "@supabase/supabase-js";

let client: SupabaseClient | null = null;

export function getSupabase(): SupabaseClient | null {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
  if (!url || !key || url.includes("your-project")) {
    if (!url || url.includes("your-project")) console.error("[supabase] Missing or placeholder NEXT_PUBLIC_SUPABASE_URL");
    if (!key) console.error("[supabase] Missing NEXT_PUBLIC_SUPABASE_ANON_KEY");
    return null;
  }
  if (!client) client = createClient(url, key);
  return client;
}

export function getServiceSupabase(): SupabaseClient | null {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const key = process.env.SUPABASE_SERVICE_ROLE_KEY;
  if (!url || !key || url.includes("your-project")) return null;
  return createClient(url, key);
}
