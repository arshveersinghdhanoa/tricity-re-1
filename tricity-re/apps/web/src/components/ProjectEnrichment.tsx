import type { ProjectMetadata } from "@tricity/core";

export function ProjectEnrichment({ metadata }: { metadata: Record<string, unknown> | null | undefined }) {
  const meta = (metadata ?? {}) as ProjectMetadata;
  const detail = meta.detail;

  const hasPdfFields =
    meta.promoterName || meta.projectLocation || meta.promoterAddress || meta.promoterContact;
  const hasDetailFields =
    detail &&
    (detail.projectCost ||
      detail.totalArea ||
      detail.parking ||
      detail.colonyType ||
      (detail.facilities && detail.facilities.length > 0));

  if (!hasPdfFields && !hasDetailFields) return null;

  return (
    <section className="mt-8 border-t border-stone-100 pt-8 space-y-6">
      {hasPdfFields && (
        <div>
          <h2 className="text-xl font-bold text-stone-900">Project information</h2>
          <p className="mt-1 text-xs text-stone-500">Sourced from PSRERA registered-projects PDF</p>
          <dl className="mt-4 grid gap-3 sm:grid-cols-2">
            {meta.promoterName && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Promoter</dt>
                <dd className="mt-1 text-sm font-semibold text-stone-800">{meta.promoterName}</dd>
              </div>
            )}
            {meta.projectLocation && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Location</dt>
                <dd className="mt-1 text-sm font-semibold text-stone-800">{meta.projectLocation}</dd>
              </div>
            )}
            {meta.promoterAddress && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100 sm:col-span-2">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Address</dt>
                <dd className="mt-1 text-sm text-stone-700">{meta.promoterAddress}</dd>
              </div>
            )}
            {meta.promoterContact && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Contact</dt>
                <dd className="mt-1 text-sm text-stone-700">{meta.promoterContact}</dd>
              </div>
            )}
          </dl>
        </div>
      )}

      {hasDetailFields && detail && (
        <div>
          <h2 className="text-xl font-bold text-stone-900">RERA filing details</h2>
          <p className="mt-1 text-xs text-stone-500">
            Client-verified from PSRERA detail page
            {detail.sourceReference && (
              <span className="block mt-1 text-stone-400">Source: {detail.sourceReference}</span>
            )}
          </p>
          <dl className="mt-4 grid gap-3 sm:grid-cols-2">
            {detail.projectCost && (
              <div className="rounded-xl border border-brand-100 bg-brand-50/40 p-4">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-brand-700">Project cost</dt>
                <dd className="mt-1 text-sm font-semibold text-stone-900">{detail.projectCost}</dd>
              </div>
            )}
            {detail.totalArea && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Total area</dt>
                <dd className="mt-1 text-sm font-semibold text-stone-800">{detail.totalArea}</dd>
              </div>
            )}
            {detail.colonyType && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Colony type</dt>
                <dd className="mt-1 text-sm font-semibold text-stone-800">{detail.colonyType}</dd>
              </div>
            )}
            {detail.parking && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Parking</dt>
                <dd className="mt-1 text-sm text-stone-700">{detail.parking}</dd>
              </div>
            )}
            {detail.facilities && detail.facilities.length > 0 && (
              <div className="rounded-xl bg-stone-50 p-4 border border-stone-100 sm:col-span-2">
                <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Facilities</dt>
                <dd className="mt-2 flex flex-wrap gap-2">
                  {detail.facilities.map((f) => (
                    <span
                      key={f}
                      className="rounded-full bg-white px-2.5 py-0.5 text-xs font-medium text-stone-700 border border-stone-200"
                    >
                      {f}
                    </span>
                  ))}
                </dd>
              </div>
            )}
          </dl>
        </div>
      )}
    </section>
  );
}
