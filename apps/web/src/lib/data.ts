import { getSupabase } from "./supabase";

export interface PriceRow {
  price_type: "asking" | "transacted";
  amount: number;
  verified: boolean;
  source: string | null;
  unit: string;
  currency: string;
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
  if (!supabase) return [];

  const { data: tenant } = await supabase
    .from("tenants")
    .select("id")
    .eq("slug", tenantSlug)
    .maybeSingle();

  if (!tenant) return [];

  const { data } = await supabase
    .from("projects")
    .select("id, slug, name, rera_number, status, description, metadata, prices(price_type, amount, verified, source, unit, currency)")
    .eq("tenant_id", tenant.id)
    .order("name");

  return (data as any) ?? [];
}

export async function fetchProjectBySlug(
  tenantSlug: string,
  slug: string,
): Promise<(ProjectRow & { prices: PriceRow[] }) | null> {
  const supabase = getSupabase();
  if (!supabase) return null;

  const { data: tenant } = await supabase
    .from("tenants")
    .select("id")
    .eq("slug", tenantSlug)
    .maybeSingle();

  if (!tenant) return null;

  const { data: project } = await supabase
    .from("projects")
    .select("id, slug, name, rera_number, status, description, metadata")
    .eq("tenant_id", tenant.id)
    .eq("slug", slug)
    .maybeSingle();

  if (!project) return null;

  const { data: prices } = await supabase
    .from("prices")
    .select("price_type, amount, verified, source, unit, currency")
    .eq("project_id", project.id);

  return { ...project, prices: prices ?? [] };
}
