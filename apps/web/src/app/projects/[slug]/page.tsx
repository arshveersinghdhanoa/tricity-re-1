import { notFound } from "next/navigation";
import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { PriceDisplay } from "@/components/PriceDisplay";
import { ProjectEnrichment } from "@/components/ProjectEnrichment";
import { LeadForm } from "@/components/LeadForm";
import { fetchProjectBySlug, fetchProjects } from "@/lib/data";
import { getSiteUrl, resolveTenant } from "@/lib/tenant";
import {
  parseProjectMeta,
  PROPERTY_TYPE_LABELS,
  RERA_DATA_DISCLAIMER,
} from "@tricity/core";

export const revalidate = 3600;

export async function generateStaticParams() {
  const tenant = await resolveTenant();
  const projects = await fetchProjects(tenant.slug);
  return projects.map((p) => ({ slug: p.slug }));
}

export default async function ProjectDetailPage({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  const tenant = await resolveTenant();
  const project = await fetchProjectBySlug(tenant.slug, slug);

  if (!project) notFound();

  const meta = parseProjectMeta(project);
  const siteUrl = getSiteUrl(tenant.domain);
  const projectJsonLd = {
    "@context": "https://schema.org",
    "@type": "Residence",
    name: project.name,
    url: `${siteUrl}/projects/${project.slug}`,
    identifier: project.rera_number,
  };

  return (
    <>
      <JsonLd data={projectJsonLd} />

      <nav className="text-sm text-stone-500 mb-6">
        <Link href="/projects" className="text-brand-600 no-underline hover:text-brand-800">
          ← All projects
        </Link>
      </nav>

      <article className="page-header overflow-hidden rounded-2xl border border-brand-200/40 shadow-md">
        <div className="page-header-inner relative p-6 md:p-8">
          <div className="page-header-grid absolute inset-0 opacity-[0.3]" aria-hidden />
          <div className="relative z-10">
        <div className="flex flex-wrap items-start justify-between gap-4">
          <div>
            <h1 className="text-3xl font-extrabold text-stone-900">{project.name}</h1>
            <p className="mt-2 font-mono text-sm text-stone-600">RERA: {project.rera_number}</p>
          </div>
          {meta.propertyType && (
            <span className="rounded-full border border-brand-200 bg-brand-50 px-3 py-1 text-xs font-bold uppercase tracking-wide text-brand-800">
              {meta.propertyType}
            </span>
          )}
        </div>

        <dl className="mt-6 grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {meta.district && (
            <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
              <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">District</dt>
              <dd className="mt-1 font-semibold text-stone-800">{meta.district}</dd>
            </div>
          )}
          {meta.propertyCategory !== "other" && (
            <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
              <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Category</dt>
              <dd className="mt-1 font-semibold text-stone-800">
                {PROPERTY_TYPE_LABELS[meta.propertyCategory]}
              </dd>
            </div>
          )}
          <div className="rounded-xl bg-stone-50 p-4 border border-stone-100">
            <dt className="text-[10px] font-bold uppercase tracking-wider text-stone-400">Price records</dt>
            <dd className="mt-1 font-semibold text-stone-800">{project.prices.length}</dd>
          </div>
        </dl>

        {project.description && (
          <p className="mt-6 text-stone-700 leading-relaxed border-t border-stone-100 pt-6">
            {project.description}
          </p>
        )}

        <ProjectEnrichment metadata={project.metadata} />

        <section className="mt-8 border-t border-stone-100 pt-8">
          <h2 className="text-xl font-bold text-stone-900">Pricing</h2>
          <p className="mt-1 text-sm text-stone-500">
            Verified transacted prices show a source. All other figures are indicative only.
          </p>
          {project.prices.length === 0 ? (
            <p className="mt-4 text-stone-600 rounded-xl bg-stone-50 p-4 border border-stone-100">
              No price records available yet. Prices appear after validated promotion from the data
              pipeline.
            </p>
          ) : (
            <div className="mt-4 grid gap-4 sm:grid-cols-2">
              {project.prices.map((price, i) => (
                <PriceDisplay
                  key={i}
                  price={{
                    priceType: price.price_type,
                    amount: Number(price.amount),
                    verified: price.verified,
                    source: price.source,
                    unit: price.unit,
                    currency: price.currency,
                    area: price.area ? Number(price.area) : null,
                    areaUnit: price.area_unit ?? null,
                  }}
                />
              ))}
            </div>
          )}
        </section>

        <section className="mt-10 rounded-xl border border-stone-200 bg-stone-50/50 p-6">
          <h2 className="text-lg font-bold text-stone-900">Enquire about this project</h2>
          <p className="mt-1 text-sm text-stone-500">
            Submit your phone — we score the lead and return a WhatsApp link with project context.
          </p>
          <div className="mt-4 max-w-md">
            <LeadForm projectSlug={project.slug} />
          </div>
        </section>
          </div>
        </div>
      </article>

      <div className="mt-8 rounded-2xl border border-amber-200 bg-amber-50/60 p-5 text-sm text-amber-950">
        {RERA_DATA_DISCLAIMER}
      </div>
    </>
  );
}
