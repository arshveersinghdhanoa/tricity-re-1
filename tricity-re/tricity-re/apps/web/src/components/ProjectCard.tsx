import type { ProjectRow } from "@/lib/data";
import {
  formatPriceDisplay,
  parseProjectMeta,
  PROPERTY_TYPE_LABELS,
  type PriceRecord,
} from "@tricity/core";
import Link from "next/link";

interface ProjectCardProps {
  project: ProjectRow;
  compact?: boolean;
}

function getPricingSummary(project: ProjectRow) {
  if (!project.prices || project.prices.length === 0) return null;

  const transacted = project.prices.find((p) => p.price_type === "transacted" && p.verified);
  if (transacted) {
    const display = formatPriceDisplay({
      priceType: transacted.price_type,
      amount: Number(transacted.amount),
      verified: transacted.verified,
      source: transacted.source,
      unit: transacted.unit,
      currency: transacted.currency,
    });
    return { display, count: project.prices.length };
  }

  const asking = project.prices.find((p) => p.price_type === "asking");
  if (asking) {
    const display = formatPriceDisplay({
      priceType: asking.price_type,
      amount: Number(asking.amount),
      verified: asking.verified,
      source: asking.source,
      unit: asking.unit,
      currency: asking.currency,
    });
    return { display, count: project.prices.length };
  }

  return null;
}

export function ProjectCard({ project, compact = false }: ProjectCardProps) {
  const meta = parseProjectMeta(project);
  const pricing = getPricingSummary(project);

  return (
    <article className="group relative flex h-full flex-col rounded-2xl border border-stone-200/80 bg-white p-5 shadow-sm transition-all duration-300 hover:-translate-y-1 hover:border-brand-200 hover:shadow-md">
      <div className="flex items-start justify-between gap-3">
        <Link href={`/projects/${project.slug}`} className="no-underline block flex-1">
          <h2
            className={`font-bold text-stone-900 leading-tight group-hover:text-brand-600 transition-colors ${
              compact ? "text-base" : "text-lg"
            }`}
          >
            {project.name}
          </h2>
        </Link>
        {meta.propertyType && (
          <span className="shrink-0 rounded-full border border-brand-200 bg-brand-50 px-2.5 py-0.5 text-[10px] font-bold uppercase tracking-wide text-brand-800">
            {meta.propertyType}
          </span>
        )}
      </div>

      <div className="mt-3 flex flex-wrap gap-2 text-xs">
        <span className="rounded bg-stone-100 px-2 py-0.5 font-mono text-stone-600 tracking-wider">
          RERA: {project.rera_number}
        </span>
        {meta.district && (
          <span className="rounded bg-stone-100 px-2 py-0.5 text-stone-600">{meta.district}</span>
        )}
        {meta.propertyCategory !== "other" && (
          <span className="rounded bg-stone-100 px-2 py-0.5 text-stone-600">
            {PROPERTY_TYPE_LABELS[meta.propertyCategory]}
          </span>
        )}
      </div>

      {!compact && project.description && (
        <p className="mt-3 line-clamp-2 text-sm text-stone-500">{project.description}</p>
      )}

      <div className="mt-auto pt-4 flex items-end justify-between border-t border-stone-100">
        {pricing ? (
          <div>
            <p className="text-[10px] font-bold uppercase tracking-wider text-stone-400">
              {pricing.display.label}
            </p>
            <p className="text-base font-extrabold text-stone-900">
              ₹{pricing.display.amount.toLocaleString("en-IN")}
              <span className="text-xs font-normal text-stone-500"> / {pricing.display.unit}</span>
            </p>
            {pricing.count > 1 && (
              <p className="text-[10px] text-stone-400 mt-0.5">+{pricing.count - 1} more price record(s)</p>
            )}
          </div>
        ) : (
          <span className="text-xs italic text-stone-400">No price records yet</span>
        )}

        <Link
          href={`/projects/${project.slug}`}
          className="inline-flex items-center gap-1 text-xs font-bold text-brand-600 no-underline hover:text-brand-700"
        >
          Details
          <span aria-hidden>→</span>
        </Link>
      </div>
    </article>
  );
}

export function ProjectCardPriceBadge({ price }: { price: PriceRecord }) {
  const display = formatPriceDisplay(price);
  return (
    <span
      className={
        display.mode === "factual-transacted"
          ? "rounded bg-emerald-50 px-2 py-0.5 text-[10px] font-bold text-emerald-800 border border-emerald-200"
          : "rounded bg-stone-100 px-2 py-0.5 text-[10px] font-bold text-stone-600 border border-stone-200"
      }
    >
      {display.label}
    </span>
  );
}
