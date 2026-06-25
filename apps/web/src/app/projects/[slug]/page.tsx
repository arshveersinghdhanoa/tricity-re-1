import { notFound } from "next/navigation";
import { JsonLd } from "@/components/JsonLd";
import { PriceDisplay } from "@/components/PriceDisplay";
import { LeadForm } from "@/components/LeadForm";
import { fetchProjectBySlug, fetchProjects } from "@/lib/data";
import { getSiteUrl, resolveTenant } from "@/lib/tenant";
import { RERA_DATA_DISCLAIMER } from "@tricity/core";

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

      <article>
        <h1 className="text-2xl font-bold">{project.name}</h1>
        <p className="mt-2 text-stone-600">RERA: {project.rera_number}</p>
        {project.description && <p className="mt-4 text-stone-700">{project.description}</p>}

        <section className="mt-8">
          <h2 className="text-lg font-semibold">Pricing</h2>
          {project.prices.length === 0 ? (
            <p className="mt-2 text-stone-600">No price records available yet.</p>
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
                  }}
                />
              ))}
            </div>
          )}
        </section>

        <section className="mt-10 rounded-xl border border-stone-200 bg-white p-6">
          <h2 className="text-lg font-semibold">Enquire about this project</h2>
          <div className="mt-4 max-w-md">
            <LeadForm projectSlug={project.slug} />
          </div>
        </section>
      </article>

      <div className="mt-8 rounded-md border border-amber-200 bg-amber-50 p-3 text-sm text-amber-950">
        {RERA_DATA_DISCLAIMER}
      </div>
    </>
  );
}
