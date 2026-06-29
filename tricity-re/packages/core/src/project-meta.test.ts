import { describe, expect, it } from "vitest";
import {
  categorizePropertyType,
  extractDistrict,
  extractPropertyType,
  matchesPropertyCategory,
  parseProjectMeta,
} from "./project-meta.js";

describe("project-meta", () => {
  it("extracts district from description", () => {
    expect(extractDistrict("Imported from PSRERA PDF. District: Mohali")).toBe("Mohali");
    expect(extractDistrict(null)).toBeNull();
  });

  it("extracts property type from status when not registration status", () => {
    expect(extractPropertyType("Residential")).toBe("Residential");
    expect(extractPropertyType("Commercial Shop")).toBe("Commercial Shop");
    expect(extractPropertyType("active")).toBeNull();
  });

  it("categorizes property types for filtering", () => {
    expect(categorizePropertyType("Residential Group Housing")).toBe("residential");
    expect(categorizePropertyType("Commercial")).toBe("commercial");
    expect(categorizePropertyType("Mixed Use")).toBe("mixed");
    expect(categorizePropertyType("Industrial Warehouse")).toBe("industrial");
    expect(categorizePropertyType("Residential Plotted")).toBe("plotted");
  });

  it("matches property category filter", () => {
    expect(matchesPropertyCategory("Commercial", "commercial")).toBe(true);
    expect(matchesPropertyCategory("Commercial", "residential")).toBe(false);
    expect(matchesPropertyCategory("Commercial", "all")).toBe(true);
  });

  it("parseProjectMeta combines fields", () => {
    const meta = parseProjectMeta({
      status: "Residential",
      description: "Imported from PSRERA PDF. District: SAS Nagar",
      prices: [{ price_type: "asking" }],
    });
    expect(meta.district).toBe("SAS Nagar");
    expect(meta.propertyType).toBe("Residential");
    expect(meta.propertyCategory).toBe("residential");
    expect(meta.hasPricing).toBe(true);
  });
});
