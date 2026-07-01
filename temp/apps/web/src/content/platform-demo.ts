export type DemoCategory =
  | "overview"
  | "trust"
  | "pricing"
  | "pipeline"
  | "leads"
  | "multi-tenant"
  | "comparison"
  | "operations"
  | "milestones";

export interface PlatformDemoSection {
  id: string;
  category: DemoCategory;
  title: string;
  summary: string;
  tags: string[];
  steps?: string[];
  body: string[];
  relatedLinks?: { label: string; href: string }[];
}

export const DEMO_CATEGORY_LABELS: Record<DemoCategory, string> = {
  overview: "Overview",
  trust: "Trust & integrity",
  pricing: "Pricing model",
  pipeline: "Data pipeline",
  leads: "Lead system",
  "multi-tenant": "Multi-tenant engine",
  comparison: "How we differ",
  operations: "Operations",
  milestones: "Delivery roadmap",
};

export const PLATFORM_DEMO_SECTIONS: PlatformDemoSection[] = [
  {
    id: "what-is-tricity",
    category: "overview",
    title: "What Tricity RE actually is",
    summary: "A trust-led property intelligence platform — not another listings portal.",
    tags: ["platform", "property intelligence", "new chandigarh", "tricity"],
    body: [
      "Tricity RE is built to answer one question buyers struggle with in the Tricity micro-markets: what can I trust?",
      "Unlike generic property portals that optimise for volume and lead volume, this platform optimises for verified accuracy. Every design decision — from price labelling to empty states — reinforces that posture.",
      "The live site at newchandigarh.in is the first tenant. The same engine can power nayagaon.in, ajitgarh.in, and future micro-market sites without duplicating editorial content.",
    ],
    relatedLinks: [
      { label: "Browse RERA projects", href: "/projects" },
      { label: "Buyer guides", href: "/guides" },
    ],
  },
  {
    id: "not-a-listings-site",
    category: "overview",
    title: "Why this is not a generic listings website",
    summary: "Listings portals sell visibility. This platform sells verified intelligence.",
    tags: ["listings", "difference", "portals", "magicbricks", "99acres"],
    body: [
      "A listings website aggregates broker ads, often without verifying whether a quoted price reflects a real transaction. Tricity RE separates asking prices (always labelled indicative) from transacted prices (shown as factual only when verified with a source).",
      "The product value is not 'more projects on screen.' An empty projects list in production is correct behaviour until genuinely sourced records are promoted — not a bug.",
      "Competitors may show fuller pages faster. This platform deliberately shows less when less is verified.",
    ],
  },
  {
    id: "accuracy-beats-completeness",
    category: "trust",
    title: "Accuracy beats completeness",
    summary: "The core product rule: never trade trust for a fuller-looking site.",
    tags: ["accuracy", "trust", "verified", "non-negotiable"],
    body: [
      "If a decision trades accuracy for visual completeness, accuracy wins — and the gap is flagged to the client.",
      "Production must never contain fabricated RERA numbers, invented prices, or demo seed data. The repo includes clearly marked FAKE demo rows for local development only.",
      "A page with three verified facts beats a page with thirty unverified claims.",
    ],
  },
  {
    id: "verified-vs-indicative",
    category: "pricing",
    title: "Verified transacted vs indicative asking prices",
    summary: "The single most important distinction on the platform.",
    tags: ["transacted", "asking", "indicative", "verified", "price"],
    steps: [
      "A price record has a type: asking or transacted.",
      "Transacted prices render as factual ONLY when verified = true AND source is non-null.",
      "All other prices — including all asking prices — render as Indicative with visible labelling.",
      "The UI must never weaken, bypass, or remove this logic.",
    ],
    body: [
      "Buyers routinely confuse broker quotes with actual deal prices. This platform makes that distinction explicit on every price card and project detail page.",
      "Indicative prices carry a disclaimer: not a verified transacted price. Verified transacted prices show the source (e.g. registry extract, client-supplied deed reference).",
    ],
    relatedLinks: [{ label: "Projects with pricing", href: "/projects?filter=priced" }],
  },
  {
    id: "price-display-code",
    category: "pricing",
    title: "How price display is enforced in code",
    summary: "The rule lives in @tricity/core and is shared across all tenants.",
    tags: ["code", "core", "formatPriceDisplay", "implementation"],
    body: [
      "packages/core/src/price.ts exports getPriceDisplayMode() and formatPriceDisplay(). Every UI surface uses these functions — never ad-hoc price formatting.",
      "canShowAsFactualTransacted() is the guard used before rendering green verified badges or factual language.",
      "Database constraint verified_requires_source ensures a row cannot be marked verified without a source at insert time.",
    ],
  },
  {
    id: "independence-disclaimer",
    category: "trust",
    title: "Independence disclaimer on every page",
    summary: "The platform is not affiliated with GMADA, RERA, or any government authority.",
    tags: ["disclaimer", "GMADA", "RERA", "government", "legal"],
    body: [
      "The independence disclaimer renders in the site footer on every page. Additional RERA/GMADA data disclaimers appear on project pages.",
      "If a gmada.in tenant is launched, it must never use government logos, seals, or styling that could be mistaken for an official government site.",
      "Disclaimers are a core feature, not optional polish.",
    ],
  },
  {
    id: "no-fake-production-data",
    category: "trust",
    title: "No fabricated data in production",
    summary: "Demo seed data is for local dev only — never promoted to live.",
    tags: ["fake", "demo", "seed", "production", "data integrity"],
    body: [
      "data/demo/seed-demo.sql creates a FAKE-RERA-000001 project marked [DEMO]. Running this against production violates Non-negotiable #2.",
      "The promotion pipeline refuses non-PSRERA rera_number patterns (must match ^PBRERA-) before inserting into production.",
      "Milestone 1 acceptance includes querying production to confirm zero demo rows.",
    ],
  },
  {
    id: "pipeline-overview",
    category: "pipeline",
    title: "Data pipeline: end-to-end flow",
    summary: "Scrape → stage → validate → promote → revalidate. Never skip staging.",
    tags: ["pipeline", "staging", "promotion", "scraper"],
    steps: [
      "inspect — review portal structure and ToS (Milestone 2, before any production scraping).",
      "scrape / dry-run — collect raw records into staging_projects and staging_prices.",
      "validate — rows marked valid or invalid with validation_errors JSON.",
      "promote — only valid, unpromoted rows move to production projects/prices tables.",
      "revalidate — POST /api/revalidate clears ISR cache so the site reflects new data.",
    ],
    body: [
      "Scrapers ship with placeholder selectors by design. Milestone 2 is a paid discovery deliverable before Milestone 3 build work begins.",
      "Production writes happen only via promotion — scrapers never write directly to production tables (Non-negotiable #4).",
    ],
  },
  {
    id: "psrera-source",
    category: "pipeline",
    title: "PSRERA (Punjab RERA) data source",
    summary: "PDF-parsed project registry records from rera.punjab.gov.in.",
    tags: ["PSRERA", "Punjab", "RERA", "PDF", "parser"],
    body: [
      "The PSRERA parser extracts: reraNumber, district, promoterName, projectName, typeOfProject, projectLocation, promoterAddress, promoterContact from tabular PDFs.",
      "On promotion, typeOfProject maps to projects.status and district embeds in description. Promoter and location fields remain in staging raw_payload until schema is extended.",
      "Property type filters on /projects search the typeOfProject value stored in status (e.g. Residential, Commercial, Mixed Use).",
    ],
    relatedLinks: [{ label: "Search projects by type", href: "/projects" }],
  },
  {
    id: "gmada-source",
    category: "pipeline",
    title: "GMADA allotment data source",
    summary: "Manual and scraped GMADA records with legal-first review.",
    tags: ["GMADA", "allotment", "Chandigarh", "manual import"],
    body: [
      "GMADA data can be ingested via manual JSON import (packages/pipeline/data/manual/gmada.json) or future automated collection after Milestone 2 ToS approval.",
      "GMADA records include typeOfProject values like Residential Plotted and Mixed Use.",
      "All GMADA-derived pages carry the same independence and indicative-price labelling as PSRERA data.",
    ],
  },
  {
    id: "legal-first-scraping",
    category: "pipeline",
    title: "Legal-first scraping policy",
    summary: "No automated collection until ToS and robots.txt review is complete.",
    tags: ["legal", "ToS", "robots.txt", "scraping", "compliance"],
    body: [
      "Milestone 2 requires a written go/no-go for PSRERA and GMADA portals before any production scraping runs.",
      "Scraping must remain polite: rate-limited, honest User-Agent, off-peak scheduling as configured in the pipeline.",
      "If a source is not viable, reporting that honestly is a successful Milestone 2 — not a project failure.",
    ],
  },
  {
    id: "staging-tables",
    category: "pipeline",
    title: "Staging tables and validation status",
    summary: "staging_projects and staging_prices hold raw data until validated.",
    tags: ["staging", "validation", "database", "supabase"],
    body: [
      "staging_projects stores raw_payload (full parser output), parsed_name, parsed_status, validation_status (pending/valid/invalid), source_portal, scraped_at, promoted_at.",
      "Public anon keys cannot read staging tables — RLS policies block all public SELECT.",
      "promotion_log and status_transitions provide an audit trail for every promote, skip, and status change.",
    ],
  },
  {
    id: "projects-page-explore",
    category: "operations",
    title: "How to explore projects on /projects",
    summary: "Search, filter by property type, paginate — all client-side on promoted data.",
    tags: ["projects", "search", "filter", "pagination", "residential", "commercial"],
    steps: [
      "Open /projects to see all RERA-tracked projects promoted to production.",
      "Use the search box for name, RERA ID, district, or property type text.",
      "Filter by property category: Residential, Commercial, Mixed Use, Industrial, Plotted, or Other.",
      "Use 'With pricing' to show only projects that have at least one price record.",
      "Paginate results (10/20/50 per page). URL params (?q=&type=&page=) are shareable.",
    ],
    body: [
      "Cards show RERA number, district, property type badge, and the best available price (verified transacted preferred over asking).",
      "Empty results mean no promoted records match — not that the platform is broken.",
    ],
    relatedLinks: [{ label: "Open projects", href: "/projects" }],
  },
  {
    id: "project-detail-page",
    category: "operations",
    title: "Project detail pages",
    summary: "Full pricing breakdown, metadata, and enquiry form per project.",
    tags: ["project detail", "slug", "pricing", "enquiry"],
    body: [
      "Each project has a unique slug URL: /projects/[slug]. Pages are statically generated (ISR, revalidate 3600s) for SEO.",
      "All price records render through PriceDisplay with verified/indicative labelling.",
      "Lead form pre-fills project context for WhatsApp deep link generation.",
      "JSON-LD structured data (Residence schema) is emitted for search engines.",
    ],
  },
  {
    id: "lead-scoring",
    category: "leads",
    title: "Lead capture and scoring",
    summary: "Every enquiry is scored; hot leads (≥60) trigger notifications.",
    tags: ["leads", "scoring", "hot lead", "WhatsApp"],
    steps: [
      "User submits phone (required), name, email, message via LeadForm.",
      "Honeypot field (website) silently rejects bots.",
      "Rate limiting by IP on /api/leads prevents spam.",
      "scoreLead() in @tricity/core applies documented rules.",
      "Score ≥ 60 marks is_hot = true.",
      "API returns wa.me deep link with project context pre-filled.",
    ],
    body: [
      "Leads persist to the leads table with tenant_id, score, is_hot, and context JSON.",
      "Hot-lead email notification (Milestone 4) delivers to HOT_LEAD_NOTIFY_EMAIL via SMTP when configured.",
    ],
    relatedLinks: [{ label: "Contact form", href: "/#contact" }],
  },
  {
    id: "multi-tenant-engine",
    category: "multi-tenant",
    title: "One engine, many sites",
    summary: "Shared codebase; unique branding and editorial per domain.",
    tags: ["multi-tenant", "nayagaon", "ajitgarh", "newchandigarh"],
    body: [
      "Tenant config lives in apps/web/src/tenants/ (code) plus tenants table (database). Host header resolves the active tenant at request time.",
      "Each tenant has its own domain, name, tagline, contact details, CSS theme (tenant-theme.css), and six unique guide shells.",
      "Non-negotiable #5: visible editorial content must not be duplicated across domains — duplicate content damages SEO for the whole network.",
    ],
  },
  {
    id: "tenant-onboarding",
    category: "multi-tenant",
    title: "Adding a new tenant (~1 day target)",
    summary: "Config + content + DNS — no code fork required.",
    tags: ["onboarding", "tenant", "DNS", "vercel"],
    steps: [
      "Create tenant config file in apps/web/src/tenants/.",
      "Register in tenants/index.ts and add DB row migration.",
      "Add unique guides (different slugs and copy from other tenants).",
      "Add CSS theme block in tenant-theme.css.",
      "Map domain in Vercel → Settings → Domains.",
      "Point DNS CNAME to Vercel.",
    ],
    body: [
      "Milestone 5 demonstrates nayagaon and ajitgarh clones without regressing the primary site.",
    ],
  },
  {
    id: "vs-listing-portals",
    category: "comparison",
    title: "How we differ from MagicBricks / 99acres / Housing.com",
    summary: "They optimise for inventory volume; we optimise for price truth.",
    tags: ["comparison", "magicbricks", "99acres", "housing", "competitors"],
    body: [
      "Listing portals monetise broker visibility. Prices are often broker quotes with no verification chain.",
      "Tricity RE shows the source for verified transacted prices and labels everything else indicative.",
      "We do not inflate project counts with unverified inventory.",
      "We focus on a micro-market (New Chandigarh first) with RERA-tracked projects, not pan-India breadth.",
    ],
  },
  {
    id: "vs-rera-portal",
    category: "comparison",
    title: "How we differ from the official RERA portal",
    summary: "RERA is the registry; we are independent intelligence layered on top.",
    tags: ["RERA portal", "government", "registry", "comparison"],
    body: [
      "The PSRERA portal is the authoritative registration source. We are not affiliated with it and do not replace it.",
      "We add buyer-oriented presentation: price labelling, guides, lead routing, and micro-market focus.",
      "Registry data enters our system only through validated pipeline promotion — never manually faked.",
    ],
  },
  {
    id: "seo-and-isr",
    category: "operations",
    title: "SEO, ISR, and structured data",
    summary: "Public pages are server-rendered; indexable content is not client-fetched.",
    tags: ["SEO", "ISR", "JSON-LD", "sitemap", "robots"],
    body: [
      "Home, projects, and guides use ISR (revalidate 3600–86400s). Pipeline promotion triggers /api/revalidate.",
      "JSON-LD: Organization + FAQ on home; Residence on project detail.",
      "Per-tenant sitemap.xml and robots.txt (disallow /api/).",
      "Target: Lighthouse mobile Performance ≥ 90 on home and project detail.",
    ],
  },
  {
    id: "supabase-schema",
    category: "operations",
    title: "Supabase schema and RLS",
    summary: "Production tables are public-read; staging and leads are locked down.",
    tags: ["supabase", "schema", "RLS", "database"],
    body: [
      "0001_init.sql creates tenants, builders, localities, projects, prices, guides, leads, staging_*, promotion_log, status_transitions.",
      "Anon key can SELECT production entities only. Staging tables return no rows for public access.",
      "Leads insert via service role in /api/leads only.",
    ],
  },
  {
    id: "vercel-deploy",
    category: "operations",
    title: "Vercel deployment model",
    summary: "Monorepo root apps/web with pnpm workspace build.",
    tags: ["vercel", "deploy", "monorepo", "environment variables"],
    steps: [
      "Root Directory: apps/web (or tricity-re/apps/web depending on repo layout).",
      "Install: cd ../.. && pnpm install",
      "Build: cd ../.. && pnpm build",
      "Set NEXT_PUBLIC_SUPABASE_*, SUPABASE_SERVICE_ROLE_KEY, NEXT_PUBLIC_SITE_URL.",
    ],
    body: [
      "Milestone 1 acceptance: *.vercel.app renders with no console errors; newchandigarh.in resolves over HTTPS.",
    ],
  },
  {
    id: "client-vs-dev",
    category: "milestones",
    title: "What the client provides vs what engineering delivers",
    summary: "Live engine ≠ complete business. Both halves are required.",
    tags: ["client", "scope", "handoff", "responsibility"],
    body: [
      "Engineering delivers: deployed platform, pipeline, lead system, tenant clones, documentation.",
      "Client delivers: verified transacted price data, real guide editorials, WhatsApp/email, builder relationships, brand assets.",
      "An empty-but-correct production site at launch is expected until client data is supplied and promoted.",
    ],
  },
  {
    id: "milestone-roadmap",
    category: "milestones",
    title: "Milestone roadmap (M1–M6)",
    summary: "Binary acceptance criteria per milestone; partial work is not accepted.",
    tags: ["milestones", "M1", "M2", "M3", "M4", "M5", "M6"],
    steps: [
      "M1 — Stand-up & deploy (Vercel, Supabase, domain, no demo data).",
      "M2 — Pipeline discovery report (ToS review, inspect, recommendation).",
      "M3 — Pipeline build (scoped by M2 approval).",
      "M4 — Lead system completion (hot-lead notification).",
      "M5 — Multi-tenant clone (nayagaon / ajitgarh).",
      "M6 — Handover (credentials, change log, operations note).",
    ],
    body: [
      "Payment and sign-off tie to demonstrable acceptance of each milestone's full checklist.",
    ],
  },
  {
    id: "guides-placeholder",
    category: "overview",
    title: "Buyer guides (placeholder editorial shells)",
    summary: "Six guide shells per tenant await client-supplied anchor content.",
    tags: ["guides", "editorial", "placeholder", "content"],
    body: [
      "Guides render from tenant config, not the DB guides table. Each shows a Placeholder badge until the client supplies final copy.",
      "Guide slugs and summaries must be unique per tenant to avoid duplicate-content SEO penalties.",
    ],
    relatedLinks: [{ label: "View guides", href: "/guides" }],
  },
  {
    id: "handoff-non-negotiables",
    category: "trust",
    title: "The six non-negotiables (acceptance gates on every milestone)",
    summary: "Violating any of these rejects the deliverable regardless of other progress.",
    tags: ["non-negotiable", "acceptance", "contract"],
    steps: [
      "1. No unverified data shown as fact.",
      "2. No fabricated or placeholder data in production.",
      "3. Disclaimers mandatory on every page.",
      "4. Scrapers write to staging only.",
      "5. No shared visible editorial across tenant sites.",
      "6. Legal-first scraping — no production scraping before M2 review.",
    ],
    body: [
      "These exist because the commercial value of the platform depends on trust. Treat them as hard contractual conditions.",
    ],
  },
];

export const DEMO_CATEGORIES = Object.keys(DEMO_CATEGORY_LABELS) as DemoCategory[];
