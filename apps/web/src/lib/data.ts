import { getSupabase } from "./supabase";

export interface PriceRow {
  price_type: "asking" | "transacted";
  amount: number;
  verified: boolean;
  source: string | null;
  unit: string;
  currency: string;
  created_at?: string;
  area?: number | null;
  area_unit?: string | null;
}

export interface ProjectRow {
  id: string;
  slug: string;
  name: string;
  rera_number: string;
  status: string;
  description: string | null;
  prices?: PriceRow[];
  metadata?: any;
}

export async function fetchProjects(tenantSlug: string): Promise<ProjectRow[]> {
  const supabase = getSupabase();
  if (!supabase) {
    console.error("[data] fetchProjects: Supabase client not configured (missing env vars?)");
    return [];
  }

  const { data: tenant, error: tenantError } = await supabase
    .from("tenants")
    .select("id")
    .eq("slug", tenantSlug)
    .maybeSingle();

  if (tenantError) {
    console.error("[data] fetchProjects: tenant lookup failed:", tenantError.message);
    return [];
  }
  if (!tenant) {
    console.error(`[data] fetchProjects: tenant "${tenantSlug}" not found`);
    return [];
  }

  const { data, error } = await supabase
    .from("projects")
    .select("id, slug, name, rera_number, status, description, metadata, prices(price_type, amount, verified, source, unit, currency, created_at, area, area_unit)")
    .eq("tenant_id", tenant.id)
    .order("name")
    .range(0, 4999);

  if (error) {
    console.error("[data] fetchProjects: query failed:", error.message);
    return [];
  }

  return (data ?? []).map((row: any) => ({
    ...row,
    prices: pickLatestPrice(row.prices ?? []),
  }));
}

export async function fetchProjectBySlug(
  tenantSlug: string,
  slug: string,
): Promise<(ProjectRow & { prices: PriceRow[] }) | null> {
  const supabase = getSupabase();
  if (!supabase) {
    console.error("[data] fetchProjectBySlug: Supabase client not configured (missing env vars?)");
    return null;
  }

  const { data: tenant, error: tenantError } = await supabase
    .from("tenants")
    .select("id")
    .eq("slug", tenantSlug)
    .maybeSingle();

  if (tenantError) {
    console.error("[data] fetchProjectBySlug: tenant lookup failed:", tenantError.message);
    return null;
  }
  if (!tenant) {
    console.error(`[data] fetchProjectBySlug: tenant "${tenantSlug}" not found`);
    return null;
  }

  const { data: project, error: projectError } = await supabase
    .from("projects")
    .select("id, slug, name, rera_number, status, description, metadata")
    .eq("tenant_id", tenant.id)
    .eq("slug", slug)
    .maybeSingle();

  if (projectError) {
    console.error("[data] fetchProjectBySlug: project query failed:", projectError.message);
    return null;
  }
  if (!project) return null;

  const { data: prices, error: pricesError } = await supabase
    .from("prices")
    .select("price_type, amount, verified, source, unit, currency, created_at, area, area_unit")
    .eq("project_id", project.id);

  if (pricesError) {
    console.error("[data] fetchProjectBySlug: prices query failed:", pricesError.message);
  }

  return { ...project, prices: pickLatestPrice(prices ?? []) };
}

function pickLatestPrice(prices: PriceRow[]): PriceRow[] {
  if (prices.length === 0) return [];

  const sorted = [...prices].sort(
    (a, b) => new Date(b.created_at ?? 0).getTime() - new Date(a.created_at ?? 0).getTime(),
  );

  const result: PriceRow[] = [];
  const latestVerified = sorted.find((p) => p.verified);
  if (latestVerified) result.push(latestVerified);

  const latestIndicative = sorted.find((p) => !p.verified);
  if (latestIndicative) result.push(latestIndicative);

  return result.length > 0 ? result : [sorted[0]];
}
