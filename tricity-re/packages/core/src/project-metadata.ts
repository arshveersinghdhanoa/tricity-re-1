/** Sourced detail fields — CAPTCHA-gated on PSRERA; Client-verified import only. */
export interface ProjectDetailFields {
  projectCost?: string | null;
  totalArea?: string | null;
  facilities?: string[];
  parking?: string | null;
  colonyType?: string | null;
  sourceReference?: string;
  enrichedAt?: string;
}

export interface ProjectMetadata {
  district?: string;
  promoterName?: string;
  projectLocation?: string;
  promoterAddress?: string;
  promoterContact?: string;
  pdfDate?: string;
  sources?: Record<string, { at: string; reference?: string }>;
  detail?: ProjectDetailFields | null;
}

export function mergeProjectMetadata(
  base: ProjectMetadata | null | undefined,
  patch: ProjectMetadata | null | undefined,
): ProjectMetadata {
  if (!base && !patch) return {};
  if (!base) return patch ?? {};
  if (!patch) return base;
  return {
    ...base,
    ...patch,
    sources: { ...base.sources, ...patch.sources },
    detail: patch.detail ?? base.detail,
  };
}
