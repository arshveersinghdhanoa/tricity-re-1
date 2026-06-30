import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { LeadForm } from "@/components/LeadForm";
import { EmptyState } from "@/components/EmptyState";
import { ProjectCard } from "@/components/ProjectCard";
import { fetchProjects } from "@/lib/data";
import { getSiteUrl, resolveTenant } from "@/lib/tenant";

export const revalidate = 3600;

const EXPLORE_LINKS = [
  {
    href: "/projects",
    title: "RERA projects",
    desc: "Search residential, commercial & mixed-use. Filter by type and pricing.",
    icon: "🏗️",
  },
  {
    href: "/platform",
    title: "Platform guide",
    desc: "Searchable walkthrough of trust rules, pipeline, leads & differences.",
    icon: "📖",
  },
  {
    href: "/guides",
    title: "Buyer guides",
    desc: "Due diligence checklists and micro-market research shells.",
    icon: "📝",
  },
  {
    href: "/#contact",
    title: "Enquire",
    desc: "Scored leads with WhatsApp deep link and hot-lead routing.",
    icon: "💬",
  },
] as const;

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

      <section className="page-header overflow-hidden rounded-2xl border border-brand-200/40 shadow-md">
        <div className="page-header-inner relative p-8 md:p-10">
          <div className="page-header-grid absolute inset-0 opacity-[0.35]" aria-hidden />
          <div className="page-header-glow absolute -right-16 -top-16 h-56 w-56 rounded-full bg-brand-300/30 blur-3xl" aria-hidden />
          <div className="relative z-10 space-y-4">
            <div className="inline-flex items-center gap-1.5 rounded-full border border-brand-200/60 bg-white/70 px-3 py-1 text-xs font-semibold text-brand-900 backdrop-blur-sm">
              <span className="h-1.5 w-1.5 rounded-full bg-brand-500 animate-pulse" />
              Independent property intelligence
            </div>
            <h1 className="text-4xl font-extrabold tracking-tight text-brand-900 sm:text-5xl">
              {tenant.name}
            </h1>
            <p className="max-w-2xl text-lg text-stone-600 leading-relaxed">{tenant.homeIntro}</p>
            <div className="flex flex-wrap gap-3 pt-2">
              <Link
                href="/projects"
                className="inline-flex rounded-xl bg-brand-600 px-5 py-2.5 text-sm font-bold text-white no-underline hover:bg-brand-700 shadow-sm"
              >
                Browse projects
              </Link>
              <Link
                href="/platform"
                className="inline-flex rounded-xl border border-brand-200/60 bg-white/80 px-5 py-2.5 text-sm font-bold text-stone-700 no-underline hover:bg-white backdrop-blur-sm"
              >
                How we&apos;re different
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Explore grid */}
      <section className="mt-12">
        <h2 className="text-xl font-bold text-stone-900 mb-4">Explore the platform</h2>
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
          {EXPLORE_LINKS.map((item) => (
            <Link
              key={item.href}
              href={item.href}
              className="block rounded-xl border border-stone-200/80 bg-white/80 p-4 no-underline shadow-sm backdrop-blur-sm transition-all hover:-translate-y-0.5 hover:border-brand-200 hover:shadow-md"
            >
              <span className="text-2xl" aria-hidden>
                {item.icon}
              </span>
              <h3 className="mt-2 font-bold text-stone-900">{item.title}</h3>
              <p className="mt-1 text-xs text-stone-500 leading-relaxed">{item.desc}</p>
            </Link>
          ))}
        </div>
      </section>

      <section className="mt-12">
        <div className="mb-6 flex items-center justify-between">
          <div>
            <h2 className="text-2xl font-bold text-stone-900">RERA-tracked projects</h2>
            <p className="text-sm text-stone-500">
              Residential, commercial & more — only promoted production data
            </p>
          </div>
          <Link
            href="/projects"
            className="inline-flex items-center gap-1 text-sm font-semibold text-brand-600 no-underline hover:text-brand-700"
          >
            Search all →
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
              <li key={p.id}>
                <ProjectCard project={p} compact />
              </li>
            ))}
          </ul>
        )}
      </section>

      <section className="mt-12 rounded-2xl border border-brand-200/50 bg-gradient-to-br from-brand-50/80 via-white/60 to-brand-100/30 p-6 shadow-sm backdrop-blur-sm">
        <h2 className="text-xl font-bold text-brand-900">Why buyers use this over listing portals</h2>
        <div className="mt-4 grid gap-4 sm:grid-cols-3 text-sm">
          <div>
            <p className="font-bold text-stone-800">Verified vs indicative</p>
            <p className="mt-1 text-stone-600">
              Transacted prices are factual only with a source. Everything else is labelled indicative.
            </p>
          </div>
          <div>
            <p className="font-bold text-stone-800">No fake inventory</p>
            <p className="mt-1 text-stone-600">
              Empty beats wrong. We never pad the site with unverified or demo data.
            </p>
          </div>
          <div>
            <p className="font-bold text-stone-800">Micro-market depth</p>
            <p className="mt-1 text-stone-600">
              RERA-tracked projects with district, type, and pricing — not pan-India noise.
            </p>
          </div>
        </div>
        <Link href="/platform" className="mt-4 inline-block text-sm font-bold text-brand-600 no-underline">
          Read the full platform guide →
        </Link>
      </section>

      <section className="mt-12">
        <div className="mb-6">
          <h2 className="text-2xl font-bold text-stone-900">Buyer guides</h2>
          <p className="text-sm text-stone-500">Research to help you navigate local real estate</p>
        </div>
        <ul className="grid gap-4 sm:grid-cols-2">
          {tenant.guides.slice(0, 4).map((g) => (
            <li key={g.slug}>
              <Link
                href={`/guides/${g.slug}`}
                className="block rounded-xl border border-stone-200 bg-white p-5 no-underline transition-all duration-300 hover:-translate-y-1 hover:border-brand-200 hover:shadow-md"
              >
                <div className="flex items-start justify-between gap-2">
                  <h3 className="font-semibold text-stone-900 hover:text-brand-600 transition-colors">
                    {g.title}
                  </h3>
                  {g.isPlaceholder && (
                    <span className="shrink-0 rounded bg-amber-50 border border-amber-200 px-2 py-0.5 text-xs font-medium text-amber-800">
                      Placeholder
                    </span>
                  )}
                </div>
                <p className="mt-2 text-sm text-stone-500 line-clamp-2">{g.summary}</p>
              </Link>
            </li>
          ))}
        </ul>
        <Link
          href="/guides"
          className="mt-4 inline-block text-sm font-semibold text-brand-600 no-underline hover:text-brand-700"
        >
          All guides →
        </Link>
      </section>

      <section id="contact" className="mt-16 rounded-2xl border border-stone-200 bg-white p-8 shadow-sm">
        <div className="grid gap-8 md:grid-cols-5">
          <div className="md:col-span-2 space-y-3">
            <h2 className="text-2xl font-bold text-stone-900">Get in touch</h2>
            <p className="text-sm text-stone-500 leading-relaxed">
              Questions about projects or verified transaction prices in {tenant.name}? Share your
              requirements and we will get back to you.
            </p>
          </div>
          <div className="md:col-span-3">
            <LeadForm />
          </div>
        </div>
      </section>
    </>
  );
}
