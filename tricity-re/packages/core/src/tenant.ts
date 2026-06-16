import type { TenantConfig } from "./types.js";

const tenants: Record<string, TenantConfig> = {};

export function registerTenant(config: TenantConfig): void {
  tenants[config.slug] = config;
}

export function getTenantBySlug(slug: string): TenantConfig | undefined {
  return tenants[configSlug(slug)];
}

export function getTenantByHost(host: string): TenantConfig | undefined {
  const normalized = host.toLowerCase().split(":")[0].replace(/^www\./, "");
  return Object.values(tenants).find(
    (t) => t.domain === normalized || t.domain === `www.${normalized}`,
  );
}

export function listTenants(): TenantConfig[] {
  return Object.values(tenants);
}

function configSlug(slug: string): string {
  return slug.toLowerCase().trim();
}

export const INDEPENDENCE_DISCLAIMER =
  "This site is not affiliated with GMADA, RERA Punjab, or any government authority. Data is compiled from public sources and verified records where indicated.";

export const RERA_DATA_DISCLAIMER =
  "RERA registration details are sourced from public records. Verify independently before making purchase decisions.";
