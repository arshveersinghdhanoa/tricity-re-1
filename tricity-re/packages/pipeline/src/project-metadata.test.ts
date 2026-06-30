import { describe, expect, it } from "vitest";
import { buildMetadataFromPdfPayload } from "./project-metadata.js";

describe("buildMetadataFromPdfPayload", () => {
  it("maps PDF fields to metadata without fabrication", () => {
    const result = buildMetadataFromPdfPayload({
      reraNumber: "PBRERA-SAS80-PR0394",
      district: "SAS Nagar",
      promoterName: "ABC Builders",
      projectName: "Green Valley",
      typeOfProject: "Residential",
      projectLocation: "Sector 105",
      promoterAddress: "Mohali",
      promoterContact: "9876543210",
    });

    expect(result.property_type).toBe("Residential");
    expect(result.metadata.promoterName).toBe("ABC Builders");
    expect(result.metadata.projectLocation).toBe("Sector 105");
    expect(result.description).toContain("SAS Nagar");
    expect(result.metadata.sources?.psrera_pdf).toBeDefined();
  });
});
