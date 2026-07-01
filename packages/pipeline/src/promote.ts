import { getSupabase, resolveTenantId } from "./staging.js";

export interface PromoteResult {
  promoted: number;
  skipped: number;
  pricesPromoted: number;
  errors: string[];
}

export async function promoteProjects(options: { tenantId?: string; limit?: number } = {}): Promise<PromoteResult> {
  const supabase = getSupabase();
  if (!supabase) return { promoted: 0, skipped: 0, pricesPromoted: 0, errors: ["Supabase not configured"] };

  const tenantSlug = options.tenantId ?? process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";
  const tenantId = await resolveTenantId(tenantSlug);
  if (!tenantId) return { promoted: 0, skipped: 0, pricesPromoted: 0, errors: [`Tenant not found: ${tenantSlug}`] };
  const limit = options.limit ?? 50;
  const errors: string[] = [];
  let promoted = 0;
  let skipped = 0;
  let pricesPromoted = 0;

  const { data: rows, error: fetchError } = await supabase
    .from("staging_projects")
    .select("*")
    .eq("validation_status", "valid")
    .is("promoted_at", null)
    .eq("tenant_id", tenantId)
    .limit(limit);

  if (fetchError) return { promoted: 0, skipped: 0, pricesPromoted: 0, errors: [`Fetch failed: ${fetchError.message}`] };

  if (!rows || rows.length === 0) {
    console.log("[promote] No unpromoted valid staging rows found");
    // Still try to promote any orphaned staging_prices
    const priceResult = await promoteStagingPrices(tenantId);
    pricesPromoted += priceResult.promoted;
    errors.push(...priceResult.errors);
    return { promoted: 0, skipped: 0, pricesPromoted, errors };
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
        // Update metadata if the staging record has richer data
        const rawPayload = row.raw_payload as Record<string, unknown>;
        const newMetadata: Record<string, unknown> = {};
        if (rawPayload.district) newMetadata.district = rawPayload.district;
        if (rawPayload.promoterName || rawPayload["Promoter's Name"]) newMetadata.promoter = rawPayload.promoterName || rawPayload["Promoter's Name"];
        if (rawPayload.promoterAddress || rawPayload["Project Address Line1"]) {
          const addr1 = rawPayload.promoterAddress || rawPayload["Project Address Line1"];
          const addr2 = rawPayload["Project Address Line2"];
          newMetadata.address = addr2 ? `${addr1}, ${addr2}` : addr1;
        }
        if (rawPayload.pinCode || rawPayload["PIN Code"]) newMetadata.pin_code = rawPayload.pinCode || String(Math.floor(Number(rawPayload["PIN Code"])));
        if (rawPayload.website) newMetadata.website = rawPayload.website;
        if (rawPayload.registrationDate || rawPayload["Registration Issue Date"]) newMetadata.registration_date = rawPayload.registrationDate || rawPayload["Registration Issue Date"];
        if (rawPayload.validUpto || rawPayload["Registration Valid Upto Date"]) newMetadata.valid_upto = rawPayload.validUpto || rawPayload["Registration Valid Upto Date"];

        // Build description
        const descParts: string[] = [];
        const promoter = rawPayload.promoterName || rawPayload["Promoter's Name"];
        const addr = rawPayload.promoterAddress || rawPayload["Project Address Line1"];
        const pin = rawPayload.pinCode || (rawPayload["PIN Code"] ? String(Math.floor(Number(rawPayload["PIN Code"]))) : "");
        const valid = rawPayload.validUpto || rawPayload["Registration Valid Upto Date"];
        if (promoter) descParts.push(`Promoter: ${promoter}`);
        if (addr) descParts.push(`Address: ${addr}`);
        if (pin) descParts.push(`PIN: ${pin}`);
        if (valid) descParts.push(`Valid upto: ${valid}`);
        const description = descParts.length > 0 ? descParts.join(". ") : null;

        // Only update if we have new metadata or description
        const updatePayload: Record<string, unknown> = {};
        if (Object.keys(newMetadata).length > 0) updatePayload.metadata = newMetadata;
        if (description) updatePayload.description = description;
        if (row.parsed_status && row.parsed_status !== "active") updatePayload.status = row.parsed_status;

        if (Object.keys(updatePayload).length > 0) {
          await supabase.from("projects").update(updatePayload).eq("id", existing.data.id);
        }

        await supabase.from("status_transitions").insert({
          project_id: existing.data.id,
          from_status: "active",
          to_status: row.parsed_status ?? "active",
          source: "psrera",
        });

        await supabase.from("promotion_log").insert({
          entity_type: "project",
          staging_id: row.id,
          production_id: existing.data.id,
          action: "skipped_dup",
          details: { reason: "rera_number already exists", updated: Object.keys(updatePayload).length > 0 },
        });

        await supabase
          .from("staging_projects")
          .update({ promoted_at: new Date().toISOString() })
          .eq("id", row.id);

        skipped++;
        continue;
      }

      const rawPayload = row.raw_payload as Record<string, unknown>;
      const metadata: Record<string, unknown> = {};
      if (rawPayload.district) metadata.district = rawPayload.district;
      if (rawPayload.promoterName || rawPayload["Promoter's Name"]) metadata.promoter = rawPayload.promoterName || rawPayload["Promoter's Name"];
      if (rawPayload.promoterAddress || rawPayload["Project Address Line1"]) {
        const addr1 = rawPayload.promoterAddress || rawPayload["Project Address Line1"];
        const addr2 = rawPayload["Project Address Line2"];
        metadata.address = addr2 ? `${addr1}, ${addr2}` : addr1;
      }
      if (rawPayload.pinCode || rawPayload["PIN Code"]) metadata.pin_code = rawPayload.pinCode || String(Math.floor(Number(rawPayload["PIN Code"])));
      if (rawPayload.website) metadata.website = rawPayload.website;
      if (rawPayload.registrationDate || rawPayload["Registration Issue Date"]) metadata.registration_date = rawPayload.registrationDate || rawPayload["Registration Issue Date"];
      if (rawPayload.validUpto || rawPayload["Registration Valid Upto Date"]) metadata.valid_upto = rawPayload.validUpto || rawPayload["Registration Valid Upto Date"];

      const descParts: string[] = [];
      const promoter = rawPayload.promoterName || rawPayload["Promoter's Name"];
      const addr = rawPayload.promoterAddress || rawPayload["Project Address Line1"];
      const pin = rawPayload.pinCode || (rawPayload["PIN Code"] ? String(Math.floor(Number(rawPayload["PIN Code"]))) : "");
      const valid = rawPayload.validUpto || rawPayload["Registration Valid Upto Date"];
      if (promoter) descParts.push(`Promoter: ${promoter}`);
      if (addr) descParts.push(`Address: ${addr}`);
      if (pin) descParts.push(`PIN: ${pin}`);
      if (valid) descParts.push(`Valid upto: ${valid}`);
      const description = descParts.length > 0 ? descParts.join(". ") : `Imported from PSRERA. District: ${rawPayload.district ?? "unknown"}`;

      const { data: newProject, error: insertError } = await supabase
        .from("projects")
        .insert({
          tenant_id: tenantId,
          rera_number: row.rera_number,
          name: row.parsed_name ?? row.rera_number,
          slug: slugify(row.parsed_name ?? row.rera_number, row.rera_number),
          status: row.parsed_status ?? "active",
          description,
          metadata: Object.keys(metadata).length > 0 ? metadata : undefined,
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

  // After promoting projects, promote any valid staging_prices
  const priceResult = await promoteStagingPrices(tenantId);
  pricesPromoted += priceResult.promoted;
  errors.push(...priceResult.errors);

  console.log(`[promote] ${promoted} promoted, ${skipped} skipped (duplicates), ${pricesPromoted} prices promoted, ${errors.length} errors`);
  return { promoted, skipped, pricesPromoted, errors };
}

/**
 * Promote validated staging_prices rows to the production prices table.
 *
 * Rules (Non-negotiable #1):
 * - Only rows with validation_status = 'valid' and promoted_at IS NULL are processed.
 * - verified=true is set ONLY when the staging row has verified=true AND a non-empty source.
 * - All other prices are stored as verified=false (UI will label them "Indicative").
 */
export async function promoteStagingPrices(tenantId: string): Promise<{ promoted: number; errors: string[] }> {
  const supabase = getSupabase();
  if (!supabase) return { promoted: 0, errors: ["Supabase not configured"] };

  const { data: stagingPrices, error: fetchError } = await supabase
    .from("staging_prices")
    .select("*")
    .eq("validation_status", "valid")
    .is("promoted_at", null)
    .eq("tenant_id", tenantId)
    .limit(200);

  if (fetchError) return { promoted: 0, errors: [`Fetch staging_prices failed: ${fetchError.message}`] };
  if (!stagingPrices || stagingPrices.length === 0) return { promoted: 0, errors: [] };

  const errors: string[] = [];
  let promoted = 0;

  for (const sp of stagingPrices) {
    try {
      // Look up the production project by RERA number
      const reraNumber = sp.rera_number;
      if (!reraNumber) {
        errors.push(`staging_price ${sp.id}: missing rera_number`);
        continue;
      }

      // Skip known example/template RERA numbers that should never reach production
      const FAKE_RERA = new Set(["PBRERA-SAS06-PR0123"]);
      if (FAKE_RERA.has(reraNumber)) {
        continue;
      }

      const { data: project } = await supabase
        .from("projects")
        .select("id")
        .eq("tenant_id", tenantId)
        .eq("rera_number", reraNumber)
        .maybeSingle();

      if (!project) {
        errors.push(`staging_price ${sp.id}: project ${reraNumber} not in production yet`);
        continue;
      }

      // Non-negotiable #1: only mark verified=true when genuinely sourced
      const isGenuinelyVerified = sp.verified === true && sp.source && sp.source.trim().length > 0;

      const { error: insertError } = await supabase.from("prices").insert({
        project_id: project.id,
        price_type: sp.price_type,
        amount: sp.amount,
        currency: "INR",
        unit: "sqft",
        verified: isGenuinelyVerified,
        source: isGenuinelyVerified ? sp.source : null,
        area: sp.area ?? null,
        area_unit: sp.area_unit ?? null,
        recorded_at: sp.scraped_at ?? new Date().toISOString(),
      });

      if (insertError) {
        errors.push(`Failed to promote price for ${reraNumber}: ${insertError.message}`);
        continue;
      }

      await supabase.from("promotion_log").insert({
        entity_type: "price",
        staging_id: sp.id,
        production_id: project.id,
        action: "promoted",
        details: { rera_number: reraNumber, price_type: sp.price_type, amount: sp.amount, verified: isGenuinelyVerified },
      });

      await supabase
        .from("staging_prices")
        .update({ promoted_at: new Date().toISOString() })
        .eq("id", sp.id);

      promoted++;
    } catch (err) {
      errors.push(`Error promoting staging_price ${sp.id}: ${err instanceof Error ? err.message : String(err)}`);
    }
  }

  if (promoted > 0) {
    console.log(`[promote] ${promoted} staging prices promoted to production`);
  }
  return { promoted, errors };
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

