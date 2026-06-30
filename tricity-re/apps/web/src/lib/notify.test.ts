import { describe, expect, it } from "vitest";
import { sendHotLeadNotification } from "./notify.js";

describe("hot-lead notification", () => {
  it("skips when env vars are not configured", async () => {
    const result = await sendHotLeadNotification({
      name: "Test Buyer",
      phone: "9876543210",
      email: "buyer@example.com",
      message: "Interested in a 3BHK",
      projectSlug: "sample-project",
      score: 85,
      sourcePage: "/projects/sample-project",
      tenantSlug: "newchandigarh",
    });
    expect(result).toBe(false);
  });

  it("accepts optional budget and timeline", async () => {
    const result = await sendHotLeadNotification({
      name: "Test Buyer",
      phone: "9876543210",
      email: null,
      message: null,
      projectSlug: null,
      score: 75,
      sourcePage: null,
      tenantSlug: "newchandigarh",
      budget: 5000000,
      timeline: "immediate",
    });
    expect(result).toBe(false);
  });
});
