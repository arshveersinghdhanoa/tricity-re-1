import { describe, expect, it } from "vitest";
import { getTenantBySlug, getTenantByHost } from "@tricity/core";
import "./tenants";

describe("tenant config", () => {
  it("loads newchandigarh tenant with six unique guide shells", () => {
    const tenant = getTenantBySlug("newchandigarh");
    expect(tenant).toBeDefined();
    expect(tenant?.guides).toHaveLength(6);
    expect(tenant?.guides.every((g) => g.isPlaceholder)).toBe(true);
  });

  it("loads nayagaon clone with unique editorial", () => {
    const tenant = getTenantBySlug("nayagaon");
    expect(tenant).toBeDefined();
    expect(tenant?.domain).toBe("nayagaon.in");
    expect(tenant?.guides).toHaveLength(6);
    expect(tenant?.guides.every((g) => g.isPlaceholder)).toBe(true);
    // Verify editorial is different from newchandigarh (Non-negotiable #5)
    const ncSlugs = getTenantBySlug("newchandigarh")?.guides.map((g) => g.slug) ?? [];
    const naSlugs = tenant?.guides.map((g) => g.slug) ?? [];
    expect(naSlugs).not.toEqual(ncSlugs);
  });

  it("loads ajitgarh clone with unique editorial", () => {
    const tenant = getTenantBySlug("ajitgarh");
    expect(tenant).toBeDefined();
    expect(tenant?.domain).toBe("ajitgarh.in");
    expect(tenant?.guides).toHaveLength(6);
    expect(tenant?.guides.every((g) => g.isPlaceholder)).toBe(true);
    // Verify editorial is different from both other tenants (Non-negotiable #5)
    const ncSlugs = getTenantBySlug("newchandigarh")?.guides.map((g) => g.slug) ?? [];
    const naSlugs = getTenantBySlug("nayagaon")?.guides.map((g) => g.slug) ?? [];
    const ajSlugs = tenant?.guides.map((g) => g.slug) ?? [];
    expect(ajSlugs).not.toEqual(ncSlugs);
    expect(ajSlugs).not.toEqual(naSlugs);
  });

  it("resolves tenants by hostname", () => {
    const nc = getTenantByHost("newchandigarh.in");
    expect(nc?.slug).toBe("newchandigarh");
    const na = getTenantByHost("nayagaon.in");
    expect(na?.slug).toBe("nayagaon");
    const aj = getTenantByHost("ajitgarh.in");
    expect(aj?.slug).toBe("ajitgarh");
  });
});
