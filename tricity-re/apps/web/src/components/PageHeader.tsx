import type { ReactNode } from "react";

interface PageHeaderProps {
  badge?: string;
  title: string;
  description?: string;
  meta?: ReactNode;
  actions?: ReactNode;
}

/** Page-level hero strip with gradient panel background. */
export function PageHeader({ badge, title, description, meta, actions }: PageHeaderProps) {
  return (
    <header className="page-header mb-8 overflow-hidden rounded-2xl border border-brand-200/40 shadow-sm">
      <div className="page-header-inner relative px-6 py-8 md:px-10 md:py-10">
        <div className="page-header-grid absolute inset-0 opacity-[0.35]" aria-hidden />
        <div className="page-header-glow absolute -right-16 -top-16 h-56 w-56 rounded-full bg-brand-300/30 blur-3xl" aria-hidden />

        <div className="relative z-10 flex flex-wrap items-start justify-between gap-4">
          <div className="max-w-3xl space-y-3">
            {badge && (
              <span className="inline-flex items-center gap-1.5 rounded-full border border-brand-200/60 bg-white/70 px-3 py-1 text-xs font-semibold text-brand-800 backdrop-blur-sm">
                {badge}
              </span>
            )}
            <h1 className="text-3xl font-extrabold tracking-tight text-brand-900 md:text-4xl">{title}</h1>
            {description && (
              <p className="text-base leading-relaxed text-stone-600 md:text-lg">{description}</p>
            )}
            {meta && <div className="text-sm text-stone-500">{meta}</div>}
          </div>
          {actions && <div className="shrink-0">{actions}</div>}
        </div>
      </div>
    </header>
  );
}
