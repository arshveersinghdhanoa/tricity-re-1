import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { LeadForm } from "@/components/LeadForm";
import { EmptyState } from "@/components/EmptyState";
import { fetchProjects } from "@/lib/data";
import { getSiteUrl, resolveTenant } from "@/lib/tenant";

export const revalidate = 3600;

export default async function HomePage() {
  const tenant = await resolveTenant();
  const projects = await fetchProjects(tenant.slug);
  const siteUrl = getSiteUrl(tenant.domain);

  const orgJsonLd = {
    "@context": "https://schema.org",
    "@type": "Organization",
    name: tenant.name,
    url: siteUrl,
    description: tenant.tagline,
  };

  const faqJsonLd = {
    "@context": "https://schema.org",
    "@type": "FAQPage",
    mainEntity: [
      {
        "@type": "Question",
        name: "What is an indicative price?",
        acceptedAnswer: {
          "@type": "Answer",
          text: "Indicative prices are asking prices or unverified figures. They are not verified transacted prices.",
        },
      },
      {
        "@type": "Question",
        name: "Is this site affiliated with GMADA or RERA?",
        acceptedAnswer: {
          "@type": "Answer",
          text: "No. This is an independent property intelligence platform not affiliated with any government authority.",
        },
      },
    ],
  };

  return (
    <>
      <JsonLd data={orgJsonLd} />
      <JsonLd data={faqJsonLd} />

      <section className="relative overflow-hidden rounded-2xl bg-gradient-to-br from-brand-50 via-white to-stone-50 p-8 shadow-sm border border-brand-100/50">
        <div className="relative z-10 space-y-4">
          <div className="inline-flex items-center gap-1.5 rounded-full bg-brand-100 px-3 py-1 text-xs font-semibold text-brand-900">
            <span className="h-1.5 w-1.5 rounded-full bg-brand-500 animate-pulse" />
            Independent property intelligence
          </div>
          <h1 className="text-4xl font-extrabold tracking-tight text-brand-900 sm:text-5xl">
            {tenant.name}
          </h1>
          <p className="max-w-2xl text-lg text-stone-600 leading-relaxed">
            {tenant.homeIntro}
          </p>
        </div>
      </section>

      <section className="mt-12">
        <div className="mb-6 flex items-center justify-between">
          <div>
            <h2 className="text-2xl font-bold text-stone-900">RERA-tracked projects</h2>
            <p className="text-sm text-stone-500">Genuinely sourced property details in this region</p>
          </div>
          <Link href="/projects" className="inline-flex items-center gap-1 text-sm font-semibold text-brand-600 no-underline hover:text-brand-700">
            View all →
          </Link>
        </div>
        {projects.length === 0 ? (
          <EmptyState
            title="No verified projects yet"
            description="Production shows only genuinely sourced data. Projects will appear here once verified records are promoted from the data pipeline."
          />
        ) : (
          <ul className="grid gap-6 sm:grid-cols-2">
            {projects.slice(0, 4).map((p) => (
              <li key={p.id} className="group relative rounded-xl border border-stone-200 bg-white p-5 shadow-sm transition-all duration-300 hover:-translate-y-1 hover:border-brand-200 hover:shadow-md">
                <Link href={`/projects/${p.slug}`} className="block no-underline">
                  <h3 className="text-lg font-bold text-stone-900 group-hover:text-brand-600 transition-colors">
                    {p.name}
                  </h3>
                  <div className="mt-3 flex items-center gap-2 text-xs font-medium text-stone-500">
                    <span className="rounded bg-stone-100 px-2.5 py-1 font-mono tracking-wider">
                      RERA: {p.rera_number}
                    </span>
                  </div>
                </Link>
              </li>
            ))}
          </ul>
        )}
      </section>

      <section className="mt-12">
        <div className="mb-6">
          <h2 className="text-2xl font-bold text-stone-900">Buyer guides</h2>
          <p className="text-sm text-stone-500">Guides and research to help you navigate local real estate</p>
        </div>
        <ul className="grid gap-4 sm:grid-cols-2">
          {tenant.guides.slice(0, 4).map((g) => (
            <li key={g.slug}>
              <Link href={`/guides/${g.slug}`} className="block rounded-xl border border-stone-200 bg-white p-5 no-underline transition-all duration-300 hover:-translate-y-1 hover:border-brand-200 hover:shadow-md">
                <div className="flex items-start justify-between gap-2">
                  <h3 className="font-semibold text-stone-900 hover:text-brand-600 transition-colors">{g.title}</h3>
                  {g.isPlaceholder && (
                    <span className="shrink-0 rounded bg-amber-50 border border-amber-200 px-2 py-0.5 text-xs font-medium text-amber-800">
                      Placeholder
                    </span>
                  )}
                </div>
                <p className="mt-2 text-sm text-stone-500 line-clamp-2">
                  {g.summary}
                </p>
              </Link>
            </li>
          ))}
        </ul>
        <Link href="/guides" className="mt-4 inline-block text-sm font-semibold text-brand-600 no-underline hover:text-brand-700">
          All guides →
        </Link>
      </section>

      <section id="contact" className="mt-16 rounded-2xl border border-stone-200 bg-white p-8 shadow-sm">
        <div className="grid gap-8 md:grid-cols-5">
          <div className="md:col-span-2 space-y-3">
            <h2 className="text-2xl font-bold text-stone-900">Get in touch</h2>
            <p className="text-sm text-stone-500 leading-relaxed">
              Have questions about projects or verified transaction prices in {tenant.name}? Share your requirements and we will get back to you.
            </p>
            <div className="pt-2">
              <span className="inline-flex items-center gap-1.5 rounded-full bg-emerald-50 px-3 py-1 text-xs font-semibold text-emerald-800">
                <span className="h-1.5 w-1.5 rounded-full bg-emerald-500" />
                Active Response
              </span>
            </div>
          </div>
          <div className="md:col-span-3">
            <LeadForm />
          </div>
        </div>
      </section>
    </>
  );
}
