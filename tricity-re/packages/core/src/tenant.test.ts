import { describe, expect, it, beforeEach } from "vitest";
import { registerTenant, getTenantBySlug, getTenantByHost, listTenants } from "./tenant.js";
import type { TenantConfig } from "./types.js";

// Helper to create a minimal tenant config
function makeTenant(overrides: Partial<TenantConfig> & { slug: string; domain: string }): TenantConfig {
  return {
    name: overrides.slug.charAt(0).toUpperCase() + overrides.slug.slice(1),
    tagline: `Tagline for ${overrides.slug}`,
    contact: { whatsappNumber: "+910000000000", email: `info@${overrides.domain}` },
    guides: [
      { slug: `${overrides.slug}-guide-1`, title: "Guide 1", summary: "Summary 1", isPlaceholder: true as const },
    ],
    homeIntro: `Welcome to ${overrides.slug}`,
    ...overrides,
  };
}

describe("tenant routing", () => {
  beforeEach(() => {
    // Register fresh tenants for each test
    registerTenant(makeTenant({ slug: "newchandigarh", domain: "newchandigarh.in" }));
    registerTenant(makeTenant({ slug: "nayagaon", domain: "nayagaon.in" }));
    registerTenant(makeTenant({ slug: "ajitgarh", domain: "ajitgarh.in" }));
  });

  it("resolves tenant by slug", () => {
    const tenant = getTenantBySlug("newchandigarh");
    expect(tenant).toBeDefined();
    expect(tenant!.domain).toBe("newchandigarh.in");
  });

  it("returns undefined for unknown slug", () => {
    expect(getTenantBySlug("unknown-city")).toBeUndefined();
  });

  it("resolves tenant by hostname", () => {
    const tenant = getTenantByHost("nayagaon.in");
    expect(tenant).toBeDefined();
    expect(tenant!.slug).toBe("nayagaon");
  });

  it("strips www. prefix when matching host", () => {
    const tenant = getTenantByHost("www.ajitgarh.in");
    expect(tenant).toBeDefined();
    expect(tenant!.slug).toBe("ajitgarh");
  });

  it("strips port number when matching host", () => {
    const tenant = getTenantByHost("newchandigarh.in:3000");
    expect(tenant).toBeDefined();
    expect(tenant!.slug).toBe("newchandigarh");
  });

  it("returns undefined for unknown host", () => {
    expect(getTenantByHost("unknown.com")).toBeUndefined();
  });

  it("lists all registered tenants", () => {
    const tenants = listTenants();
    const slugs = tenants.map((t) => t.slug);
    expect(slugs).toContain("newchandigarh");
    expect(slugs).toContain("nayagaon");
    expect(slugs).toContain("ajitgarh");
  });

  it("each tenant has unique guides (Non-negotiable #5)", () => {
    const tenants = listTenants();
    const allGuideSlugs = tenants.flatMap((t) => t.guides.map((g) => g.slug));
    const uniqueSlugs = new Set(allGuideSlugs);
    expect(uniqueSlugs.size).toBe(allGuideSlugs.length);
  });
});
