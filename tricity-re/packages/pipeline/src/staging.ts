import { createClient } from "@supabase/supabase-js";

export interface StagingProjectInsert {
  tenant_id: string;
  rera_number: string;
  raw_payload: Record<string, unknown>;
  parsed_name: string | null;
  parsed_status: string | null;
  validation_status: "pending" | "valid" | "invalid";
  validation_errors: string[] | null;
  source_portal: string;
}

export interface StagingProjectRow extends StagingProjectInsert {
  id: string;
  scraped_at: string;
  promoted_at: string | null;
}

export function getSupabase() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const key = process.env.SUPABASE_SERVICE_ROLE_KEY;
  if (!url || !key || url.includes("your-project")) return null;
  return createClient(url, key);
}

export async function resolveTenantId(slug: string): Promise<string | null> {
  const supabase = getSupabase();
  if (!supabase) return null;
  const { data } = await supabase.from("tenants").select("id").eq("slug", slug).maybeSingle();
  return data?.id ?? null;
}

export async function writeToStaging(records: StagingProjectInsert[]): Promise<{ inserted: number; errors: string[] }> {
  const supabase = getSupabase();
  if (!supabase) return { inserted: 0, errors: ["Supabase not configured — set NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY"] };

  const errors: string[] = [];
  let inserted = 0;

  for (const record of records) {
    const { error } = await supabase.from("staging_projects").insert({
      tenant_id: record.tenant_id,
      rera_number: record.rera_number,
      raw_payload: record.raw_payload,
      parsed_name: record.parsed_name,
      parsed_status: record.parsed_status,
      validation_status: record.validation_status,
      validation_errors: record.validation_errors,
      source_portal: record.source_portal,
    });

    if (error) {
      errors.push(`Failed to insert ${record.rera_number}: ${error.message}`);
    } else {
      inserted++;
    }
  }

  return { inserted, errors };
}

export async function writeManyStaging(records: StagingProjectInsert[]): Promise<{ inserted: number; errors: string[] }> {
  const supabase = getSupabase();
  if (!supabase) return { inserted: 0, errors: ["Supabase not configured"] };

  const { error } = await supabase.from("staging_projects").insert(
    records.map((r) => ({
      tenant_id: r.tenant_id,
      rera_number: r.rera_number,
      raw_payload: r.raw_payload,
      parsed_name: r.parsed_name,
      parsed_status: r.parsed_status,
      validation_status: r.validation_status,
      validation_errors: r.validation_errors,
      source_portal: r.source_portal,
    })),
  );

  if (error) return { inserted: 0, errors: [error.message] };
  return { inserted: records.length, errors: [] };
}
