export type PropertyTypeCategory =
  | "residential"
  | "commercial"
  | "mixed"
  | "industrial"
  | "plotted"
  | "other";

export interface ProjectMetaInput {
  status: string | null;
  description: string | null;
  prices?: unknown[] | null;
}

export interface ProjectMeta {
  district: string | null;
  propertyType: string | null;
  propertyCategory: PropertyTypeCategory;
  hasPricing: boolean;
}

const REGISTRATION_STATUSES = new Set(["active", "lapsed", "unknown", "pending"]);

export function extractDistrict(description: string | null): string | null {
  if (!description) return null;
  const match = description.match(/District:\s*([^,.\n]+)/i);
  return match ? match[1].trim() : null;
}

/** PSRERA stores typeOfProject in projects.status; registration status lives elsewhere. */
export function extractPropertyType(status: string | null): string | null {
  if (!status) return null;
  const normalized = status.trim();
  if (!normalized || REGISTRATION_STATUSES.has(normalized.toLowerCase())) return null;
  return normalized;
}

export function categorizePropertyType(status: string | null): PropertyTypeCategory {
  const raw = extractPropertyType(status);
  if (!raw) return "other";

  const s = raw.toLowerCase();
  if (/commercial|shop|office|retail|mall/.test(s)) return "commercial";
  if (/mixed/.test(s)) return "mixed";
  if (/industrial|warehouse|factory/.test(s)) return "industrial";
  if (/plotted|plot|farmhouse/.test(s)) return "plotted";
  if (/residential|group housing|villa|apartment|flat|housing|township/.test(s)) return "residential";
  return "other";
}

export function parseProjectMeta(project: ProjectMetaInput): ProjectMeta {
  return {
    district: extractDistrict(project.description),
    propertyType: extractPropertyType(project.status),
    propertyCategory: categorizePropertyType(project.status),
    hasPricing: Boolean(project.prices && project.prices.length > 0),
  };
}

export const PROPERTY_TYPE_LABELS: Record<PropertyTypeCategory, string> = {
  residential: "Residential",
  commercial: "Commercial",
  mixed: "Mixed Use",
  industrial: "Industrial",
  plotted: "Plotted / Land",
  other: "Other",
};

export function matchesPropertyCategory(
  status: string | null,
  category: PropertyTypeCategory | "all",
): boolean {
  if (category === "all") return true;
  return categorizePropertyType(status) === category;
}
