import { describe, expect, it } from "vitest";
import { getTenantBySlug } from "@tricity/core";
import "./tenants";

describe("tenant config", () => {
  it("loads newchandigarh tenant with six guide shells", () => {
    const tenant = getTenantBySlug("newchandigarh");
    expect(tenant).toBeDefined();
    expect(tenant?.guides).toHaveLength(6);
    expect(tenant?.guides.every((g) => g.isPlaceholder)).toBe(true);
  });
});
