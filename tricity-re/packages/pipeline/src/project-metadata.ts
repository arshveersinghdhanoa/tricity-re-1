import type { ProjectMetadata } from "@tricity/core";
import type { ParserProjectRecord } from "./psrera/types.js";

export function buildMetadataFromPdfPayload(
  raw: Record<string, unknown>,
): { property_type: string | null; metadata: ProjectMetadata; description: string } {
  const p = raw as unknown as ParserProjectRecord & { detail?: ProjectMetadata["detail"] };
  const district = (p.district || "unknown").trim();

  const descriptionParts = [`Imported from PSRERA PDF. District: ${district}`];
  if (p.projectLocation?.trim()) descriptionParts.push(`Location: ${p.projectLocation.trim()}`);
  if (p.promoterName?.trim() && p.promoterName !== "Unknown") {
    descriptionParts.push(`Promoter: ${p.promoterName.trim()}`);
  }

  const metadata: ProjectMetadata = {
    district: p.district?.trim() || undefined,
    promoterName: p.promoterName && p.promoterName !== "Unknown" ? p.promoterName.trim() : undefined,
    projectLocation: p.projectLocation?.trim() || undefined,
    promoterAddress: p.promoterAddress?.trim() || undefined,
    promoterContact: p.promoterContact?.trim() || undefined,
    sources: {
      psrera_pdf: { at: new Date().toISOString(), reference: "List_of_Registered_Projects.pdf" },
    },
    detail: p.detail ?? null,
  };

  const property_type =
    p.typeOfProject?.trim() && p.typeOfProject !== "Unknown" ? p.typeOfProject.trim() : null;

  return {
    property_type,
    metadata,
    description: descriptionParts.join(". "),
  };
}
