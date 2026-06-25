import { getSupabase, resolveTenantId } from "./staging.js";

export interface PromoteResult {
  promoted: number;
  skipped: number;
  errors: string[];
}

export async function promoteProjects(options: { tenantId?: string; limit?: number } = {}): Promise<PromoteResult> {
  const supabase = getSupabase();
  if (!supabase) return { promoted: 0, skipped: 0, errors: ["Supabase not configured"] };

  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";
  const tenantId = await resolveTenantId(tenantSlug);
  if (!tenantId) return { promoted: 0, skipped: 0, errors: [`Tenant not found: ${tenantSlug}`] };
  const limit = options.limit ?? 50;
  const errors: string[] = [];
  let promoted = 0;
  let skipped = 0;

  const { data: rows, error: fetchError } = await supabase
    .from("staging_projects")
    .select("*")
    .eq("validation_status", "valid")
    .is("promoted_at", null)
    .eq("tenant_id", tenantId)
    .limit(limit);

  if (fetchError) return { promoted: 0, skipped: 0, errors: [`Fetch failed: ${fetchError.message}`] };

  if (!rows || rows.length === 0) {
    console.log("[promote] No unpromoted valid staging rows found");
    return { promoted: 0, skipped: 0, errors: [] };
  }

  for (const row of rows) {
    try {
      // Prevent fabricated project numbers from entering production (Non-negotiable #2)
      if (!/^PBRERA-/.test(row.rera_number)) {
        errors.push(`Refusing non-PSRERA rera_number: ${row.rera_number}`);
        continue;
      }

      const existing = await supabase
        .from("projects")
        .select("id")
        .eq("tenant_id", tenantId)
        .eq("rera_number", row.rera_number)
        .maybeSingle();

      if (existing.data) {
        await supabase.from("status_transitions").insert({
          project_id: existing.data.id,
          from_status: "active",
          to_status: row.parsed_status ?? "active",
          source: "psrera_pdf",
        });

        await supabase.from("promotion_log").insert({
          entity_type: "project",
          staging_id: row.id,
          production_id: existing.data.id,
          action: "skipped_dup",
          details: { reason: "rera_number already exists" },
        });

        await supabase
          .from("staging_projects")
          .update({ promoted_at: new Date().toISOString() })
          .eq("id", row.id);

        skipped++;
        continue;
      }

      const { data: newProject, error: insertError } = await supabase
        .from("projects")
        .insert({
          tenant_id: tenantId,
          rera_number: row.rera_number,
          name: row.parsed_name ?? row.rera_number,
          slug: slugify(row.parsed_name ?? row.rera_number, row.rera_number),
          status: row.parsed_status ?? "active",
          description: `Imported from PSRERA PDF. District: ${(row.raw_payload as Record<string, unknown>)?.district ?? "unknown"}`,
        })
        .select("id")
        .single();

      if (insertError) {
        errors.push(`Insert failed for ${row.rera_number}: ${insertError.message}`);
        continue;
      }

      await supabase.from("promotion_log").insert({
        entity_type: "project",
        staging_id: row.id,
        production_id: newProject.id,
        action: "promoted",
        details: { rera_number: row.rera_number },
      });

      await supabase
        .from("staging_projects")
        .update({ promoted_at: new Date().toISOString() })
        .eq("id", row.id);

      promoted++;
    } catch (err) {
      errors.push(`Error processing ${row.rera_number}: ${err instanceof Error ? err.message : String(err)}`);
    }
  }

  console.log(`[promote] ${promoted} promoted, ${skipped} skipped (duplicates), ${errors.length} errors`);
  return { promoted, skipped, errors };
}

function slugify(text: string, reraNumber: string): string {
  const base = text
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 80);
  const suffix = reraNumber.toLowerCase().replace(/[^a-z0-9]/g, "").slice(-6);
  return `${base}-${suffix}`;
}
