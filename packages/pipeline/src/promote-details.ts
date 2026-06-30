import { getSupabase } from "./staging.js";
import type { ProjectMetadata } from "@tricity/core";
import { mergeProjectMetadata } from "@tricity/core";
import { buildMetadataFromPdfPayload } from "./project-metadata.js";

/** Promote Client-verified CAPTCHA-gated detail fields from staging_project_details → projects.metadata */
export async function promoteProjectDetails(tenantId: string): Promise<{ promoted: number; errors: string[] }> {
  const supabase = getSupabase();
  if (!supabase) return { promoted: 0, errors: ["Supabase not configured"] };

  const { data: rows, error: fetchError } = await supabase
    .from("staging_project_details")
    .select("*")
    .eq("tenant_id", tenantId)
    .eq("validation_status", "valid")
    .is("promoted_at", null)
    .limit(100);

  if (fetchError) return { promoted: 0, errors: [`Fetch staging_project_details failed: ${fetchError.message}`] };
  if (!rows || rows.length === 0) return { promoted: 0, errors: [] };

  const errors: string[] = [];
  let promoted = 0;

  for (const row of rows) {
    try {
      const { data: project } = await supabase
        .from("projects")
        .select("id, metadata")
        .eq("tenant_id", tenantId)
        .eq("rera_number", row.rera_number)
        .maybeSingle();

      if (!project) {
        errors.push(`Detail for ${row.rera_number}: project not in production — run promote first`);
        continue;
      }

      const existingMeta = (project.metadata as ProjectMetadata) ?? {};
      const detail = row.detail as ProjectMetadata["detail"];
      const merged = mergeProjectMetadata(existingMeta, {
        detail: {
          ...detail,
          sourceReference: row.source_reference,
          enrichedAt: new Date().toISOString(),
        },
        sources: {
          psera_detail: { at: new Date().toISOString(), reference: row.source_reference },
        },
      });

      const { error: updateError } = await supabase
        .from("projects")
        .update({ metadata: merged, updated_at: new Date().toISOString() })
        .eq("id", project.id);

      if (updateError) {
        errors.push(`Failed to merge detail for ${row.rera_number}: ${updateError.message}`);
        continue;
      }

      await supabase.from("promotion_log").insert({
        entity_type: "project_detail",
        staging_id: row.id,
        production_id: project.id,
        action: "promoted",
        details: { rera_number: row.rera_number, source_reference: row.source_reference },
      });

      await supabase
        .from("staging_project_details")
        .update({ promoted_at: new Date().toISOString() })
        .eq("id", row.id);

      promoted++;
    } catch (err) {
      errors.push(`Error promoting detail ${row.rera_number}: ${err instanceof Error ? err.message : String(err)}`);
    }
  }

  if (promoted > 0) {
    console.log(`[promote] ${promoted} project detail record(s) merged into production metadata`);
  }

  return { promoted, errors };
}

/** Backfill PDF-sourced metadata for projects already in production from staging raw_payload. */
export async function backfillPdfMetadata(options: {
  tenantId?: string;
  limit?: number;
} = {}): Promise<{ updated: number; errors: string[] }> {
  const supabase = getSupabase();
  if (!supabase) return { updated: 0, errors: ["Supabase not configured"] };

  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";
  const { data: tenant } = await supabase.from("tenants").select("id").eq("slug", tenantSlug).maybeSingle();
  if (!tenant) return { updated: 0, errors: [`Tenant not found: ${tenantSlug}`] };

  const limit = options.limit ?? 200;
  const { data: stagingRows, error: fetchError } = await supabase
    .from("staging_projects")
    .select("rera_number, raw_payload")
    .eq("tenant_id", tenant.id)
    .eq("source_portal", "psrera")
    .not("raw_payload", "is", null)
    .limit(limit);

  if (fetchError) return { updated: 0, errors: [fetchError.message] };

  const errors: string[] = [];
  let updated = 0;

  for (const row of stagingRows ?? []) {
    const enriched = buildMetadataFromPdfPayload(row.raw_payload as Record<string, unknown>);
    const { data: project } = await supabase
      .from("projects")
      .select("id")
      .eq("tenant_id", tenant.id)
      .eq("rera_number", row.rera_number)
      .maybeSingle();

    if (!project) continue;

    const { error: updateError } = await supabase
      .from("projects")
      .update({
        property_type: enriched.property_type,
        metadata: enriched.metadata,
        description: enriched.description,
        status: "active",
        updated_at: new Date().toISOString(),
      })
      .eq("id", project.id);

    if (updateError) {
      errors.push(`${row.rera_number}: ${updateError.message}`);
    } else {
      updated++;
    }
  }

  console.log(`[backfill] Updated metadata for ${updated} production project(s)`);
  return { updated, errors };
}
