import "@/tenants";
import { getTenantByHost, getTenantBySlug, listTenants, type TenantConfig } from "@tricity/core";
import { headers } from "next/headers";
import { newchandigarh } from "@/tenants/newchandigarh";

export function getDefaultTenant(): TenantConfig {
  const slug = process.env.NEXT_PUBLIC_DEFAULT_TENANT ?? "newchandigarh";
  return getTenantBySlug(slug) ?? newchandigarh;
}

export async function resolveTenant(): Promise<TenantConfig> {
  try {
    const h = await headers();
    const host = h.get("x-forwarded-host") ?? h.get("host") ?? "localhost";
    const fromHost = getTenantByHost(host);
    if (fromHost) return fromHost;
  } catch {
    // Outside request scope (e.g. generateStaticParams at build time)
  }

  return getDefaultTenant() ?? listTenants()[0];
}

export function getSiteUrl(tenantDomain: string): string {
  if (process.env.NEXT_PUBLIC_SITE_URL) return process.env.NEXT_PUBLIC_SITE_URL;
  if (tenantDomain === "localhost" || tenantDomain.includes("127.0.0.1")) {
    return "http://localhost:3000";
  }
  return `https://${tenantDomain.replace(/^www\./, "")}`;
}
