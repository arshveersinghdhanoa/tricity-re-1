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

      <section className="space-y-4">
        <h1 className="text-3xl font-bold tracking-tight text-brand-900">{tenant.name}</h1>
        <p className="max-w-2xl text-lg text-stone-700">{tenant.homeIntro}</p>
      </section>

      <section className="mt-10">
        <div className="mb-4 flex items-center justify-between">
          <h2 className="text-xl font-semibold">RERA-tracked projects</h2>
          <Link href="/projects" className="text-sm">
            View all
          </Link>
        </div>
        {projects.length === 0 ? (
          <EmptyState
            title="No verified projects yet"
            description="Production shows only genuinely sourced data. Projects will appear here once verified records are promoted from the data pipeline."
          />
        ) : (
          <ul className="grid gap-4 sm:grid-cols-2">
            {projects.slice(0, 4).map((p) => (
              <li key={p.id} className="rounded-lg border border-stone-200 bg-white p-4">
                <Link href={`/projects/${p.slug}`} className="font-medium no-underline">
                  {p.name}
                </Link>
                <p className="mt-1 text-sm text-stone-600">RERA: {p.rera_number}</p>
              </li>
            ))}
          </ul>
        )}
      </section>

      <section className="mt-10">
        <h2 className="mb-4 text-xl font-semibold">Buyer guides</h2>
        <ul className="grid gap-3 sm:grid-cols-2">
          {tenant.guides.slice(0, 4).map((g) => (
            <li key={g.slug}>
              <Link href={`/guides/${g.slug}`} className="block rounded-lg border border-stone-200 bg-white p-4 no-underline hover:border-brand-300">
                <span className="font-medium">{g.title}</span>
                {g.isPlaceholder && (
                  <span className="ml-2 rounded bg-stone-100 px-2 py-0.5 text-xs text-stone-600">
                    Placeholder
                  </span>
                )}
              </Link>
            </li>
          ))}
        </ul>
        <Link href="/guides" className="mt-3 inline-block text-sm">
          All guides →
        </Link>
      </section>

      <section id="contact" className="mt-10 rounded-xl border border-stone-200 bg-white p-6">
        <h2 className="text-xl font-semibold">Contact</h2>
        <p className="mt-1 text-sm text-stone-600">
          Share your requirements — we respond via WhatsApp when configured.
        </p>
        <div className="mt-4 max-w-md">
          <LeadForm />
        </div>
      </section>
    </>
  );
}
