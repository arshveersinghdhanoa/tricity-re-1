# DEVELOPMENT HANDOFF BRIEF & ACCEPTANCE CRITERIA
## Tricity RE Platform — Phase 1

*To: [Development team / vendor name]*
*From: [Akhil / Company]*
*Re: Scope, deliverables, acceptance criteria, and non-negotiable requirements*
*Attachments: `tricity-re.zip` (codebase), `README.md`, `Tricity_RE_Project_Bible.md` (context)*

---

## 0. HOW TO USE THIS DOCUMENT

This is the controlling specification for the engagement. Where this document and any verbal discussion differ, this document governs. It does three things:

1. **Defines what you (the team) are responsible for delivering** — and, equally important, what you are **not**.
2. **Sets binary acceptance criteria** for each milestone — work is "done" only when its criteria are demonstrably met.
3. **Locks a small set of non-negotiable requirements** (Section 3) that are acceptance gates on *every* milestone. Code that violates them is not accepted regardless of how complete it otherwise appears.

Read the attached **Project Bible (Part VI + Appendices)** and **`README.md`** before starting. The `CLAUDE.md` file in the repo is internal context; this brief is your spec.

---

## 1. WHAT THIS PROJECT ACTUALLY IS (READ THIS FIRST)

This is **not** a generic property-listings website. It is a **trust- and data-led property-intelligence platform**. Its entire value rests on showing buyers *verified, accurate* information that competitors don't have. Two consequences for how you build:

- **Accuracy beats completeness.** A page with less data that is *correct and verified* is worth more than a fuller page padded with unverified data. Never populate the site with data the system has not verified just to make it look finished. (See Section 3.)
- **Trust posture is a feature, not decoration.** Disclaimers, the "indicative" labelling on unverified prices, and the strict separation of asking vs verified-transacted prices are core requirements, not optional polish.

If a decision trades accuracy/trust for visual completeness, choose accuracy/trust, and flag it.

---

## 2. SCOPE: WHO OWNS WHAT

The project has two halves. **You own the engineering. The Client owns the business inputs.** Neither can complete the project alone, and "the site is live" is **not** "the project is complete" (see Section 8).

### 2.1 IN SCOPE — your deliverables

- Stand up and deploy the existing codebase (newchandigarh.in) to production.
- Investigate, then (conditionally) build and operate the data pipeline — **see Section 5 for the special handling of the scrapers.**
- Complete the explicitly stubbed features (e.g. hot-lead notification, currently a `TODO`).
- Implement tenant-clone capability and demonstrate it (nayagaon / ajitgarh).
- Meet the quality, SEO, and data-integrity acceptance criteria in Section 4.
- Hand over working credentials, documentation of anything you changed, and a short operations note.

### 2.2 OUT OF SCOPE — Client-provided (do not block on these; request them)

| Item | Provided by Client | You should… |
|---|---|---|
| Verified transacted-price data / sourcing method | Client | Build the system to *store and display* it correctly; do **not** invent or substitute unverified data. |
| The 6 anchor guide editorials | Client | Render the content provided; the placeholder shells stay until Client supplies real text. |
| Builder/broker relationships, lead pricing | Client | N/A — business layer. |
| Real WhatsApp number, contact email, lead-routing destination | Client | Wire in the values Client provides; use placeholders until then. |
| Brand assets / logo (if any) | Client | Integrate when provided. |
| Decision on PSRERA/GMADA data approach | Client (informed by your Section 5 report) | Provide the report and recommendation that lets Client decide. |

### 2.3 Client-provided access / inputs at kickoff

So you are not blocked, Client will provide at or near kickoff: Supabase project (or authority to create one), Vercel account access, GitHub repository access, the domain registrar access or DNS change capability for newchandigarh.in, and the business values in 2.2 as they become available. Flag any missing input in writing within 3 business days of kickoff.

---

## 3. NON-NEGOTIABLE REQUIREMENTS (ACCEPTANCE GATES ON EVERY MILESTONE)

These apply to *all* work. Any deliverable that violates any of these is **not accepted**, irrespective of other progress. They exist because the project's commercial value depends on them.

1. **No unverified data shown as fact.** A transacted price may render as a factual transacted price **only** when its record has `verified = true` and a non-null `source`. All other prices (asking prices) must be visibly labelled "indicative." This logic must not be weakened, bypassed, or removed.

2. **No fabricated or placeholder data in production.** Do not seed, generate, or scrape-and-promote invented/plausible-looking data (fake RERA numbers, made-up prices, sample builders) into the production database or live site. The repo's demo/sample data is clearly marked fake and must never reach production. Production shows **only** genuinely sourced/verified data, even if that means fewer entries at launch.

3. **Disclaimers are mandatory and must remain.** The independence disclaimer ("not affiliated with GMADA / RERA / any government authority") must render on every page footer and wherever RERA/GMADA-derived data appears. The `gmada.in` property (if in scope for this engagement) must never use government logos, seals, or any design that could be mistaken for an official government site.

4. **Scrapers write to staging only.** Scrapers must never write directly to production tables. The staging → validation → promotion flow must be preserved; only validated rows are promoted.

5. **No shared visible content across tenant sites.** The engine is shared; the *visible editorial content* (guides, locality copy) must remain unique per tenant. Do not duplicate editorial across domains — it causes a search-engine duplicate-content penalty that damages the whole network.

6. **Legal-first scraping.** Do not run automated collection against any external portal until the Terms-of-Service / robots.txt review in Section 5 is complete and the approach is confirmed acceptable. Scraping must remain polite (rate-limited, honest User-Agent, off-peak) as configured.

> Put plainly: violating any of the above doesn't just lower quality — it destroys the asset the Client is paying to build. Treat them as hard contractual conditions.

---

## 4. MILESTONES & ACCEPTANCE CRITERIA

Each milestone is accepted only when **all** its criteria are demonstrably met (Client verifies per Section 7). Recommended: tie payment to acceptance of each milestone. [Payment split: TBD by Client.]

### Milestone 1 — Stand-up & Deploy
**Goal:** the existing app live on production infrastructure with real data storage.

Acceptance criteria:
- [ ] `pnpm install`, `pnpm test`, and `pnpm build` all succeed on a clean checkout (demonstrate).
- [ ] Supabase project created; `0001_init.sql` applied; schema matches the repo migration.
- [ ] App deployed to Vercel with **Root Directory = `apps/web`**; `*.vercel.app` URL renders the site with no console errors.
- [ ] `newchandigarh.in` (and `www`) resolve over HTTPS to the deployed app.
- [ ] `/sitemap.xml` and `/robots.txt` render correctly for the live domain.
- [ ] Demo/sample data is **absent** from the production database (Non-negotiable #2).
- [ ] Environment variables set securely; no secrets committed to the repo.

### Milestone 2 — Data Pipeline Discovery & Report *(see Section 5)*
**Goal:** a clear, written go/no-go on the automated data pipeline before any build effort is sunk.

Acceptance criteria:
- [ ] Written ToS/robots.txt review for **both** PSRERA (rera.punjab.gov.in) and GMADA (gmada.gov.in), stating whether automated public-record access is permissible.
- [ ] Results of running the repo's `--inspect` mode against both portals (what the live structure is; whether anti-bot measures exist).
- [ ] A recommendation for each source: **(a)** buildable as designed, **(b)** buildable with stated changes/effort, or **(c)** not viable as designed — with a proposed fallback (e.g. manual entry workflow, alternative source, data partnership).
- [ ] An effort/time estimate for Milestone 3 based on the findings.
- [ ] **No production scraping has been run** before this review is complete and approved (Non-negotiable #6).

*This milestone is research with a written deliverable. Do not promise working scrapers before completing it.*

### Milestone 3 — Data Pipeline Build *(scope confirmed by M2 outcome)*
**Goal:** the approved data approach, implemented and running.

Acceptance criteria (for the approach approved after M2):
- [ ] Selectors mapped against the live portals (or the agreed fallback implemented); `--dry-run` produces correctly parsed, schema-valid records.
- [ ] Promotion step moves only validated rows to production, with RERA-number de-duplication and status-transition logging working.
- [ ] Scrapers write to staging only; production writes happen only via promotion (Non-negotiable #4).
- [ ] GitHub Actions cron runs the pipeline on schedule and successfully triggers site revalidation (demonstrate one end-to-end automated run).
- [ ] Polite-scraping config intact (rate limit, honest User-Agent, off-peak).
- [ ] A documented procedure for re-mapping selectors when a portal changes (drift handling).

### Milestone 4 — Lead System Completion
**Goal:** the lead flow fully functional end-to-end, including the currently-stubbed notification.

Acceptance criteria:
- [ ] Submitting the lead form with a valid phone creates a correctly-scored row in the `leads` table and returns a working `wa.me` deep link pre-filled with the right context.
- [ ] Lead scoring matches the documented rules; hot leads (score ≥ 60) are correctly flagged.
- [ ] The hot-lead **notification is implemented** (not a `TODO`) — delivering to the destination/method the Client specifies (e.g. email/WhatsApp). Demonstrate a hot lead producing a real notification.
- [ ] Honeypot and rate-limiting anti-spam are active and verified.
- [ ] The real WhatsApp number and contact email provided by Client are wired in (or clearly parameterised pending Client's values).

### Milestone 5 — Multi-Tenant Clone Capability
**Goal:** prove the "one engine, many sites" promise.

Acceptance criteria:
- [ ] A second tenant (e.g. nayagaon) renders correctly on its own hostname with its own config/branding and **its own** (placeholder-but-unique) content — no shared visible editorial (Non-negotiable #5).
- [ ] A written, step-by-step tenant-onboarding procedure exists/updated, such that adding a further domain is a config + content + DNS task (target: ~1 day).
- [ ] The clone does not regress the live primary site.

### Milestone 6 — Handover
**Goal:** Client can operate and continue the project without the team.

Acceptance criteria:
- [ ] All credentials/access transferred to Client ownership (Supabase, Vercel, GitHub, any third-party services).
- [ ] Documentation of every change made to the original codebase.
- [ ] A short operations note: how to run/monitor the pipeline, how to verify a price point, how to add a builder, how to triage leads (extend the repo's runbook).
- [ ] Known issues / limitations listed honestly in writing.
- [ ] Repo history is clean (meaningful commits; no secrets in history).

---

## 5. SPECIAL HANDLING: THE SCRAPERS (CRITICAL — READ CAREFULLY)

The data scrapers ship with **placeholder selectors by design.** They are **not** a finished feature, and they must not be treated as one. Two reasons this needs explicit handling:

1. **Legality must be confirmed first.** Automated access to PSRERA/GMADA is only acceptable if those portals' Terms of Service and robots.txt permit it. This is a prerequisite, not an afterthought. **Do not run production scraping before the Section-4 Milestone-2 review is approved.**

2. **Technical viability is unknown until inspected.** The live portals may have anti-bot protection, may change structure, or may not expose the needed data cleanly. Whether the pipeline is buildable *as designed* is a genuine open question.

**Therefore the scraper work is split deliberately:** Milestone 2 is a **paid discovery deliverable** (review + inspect + written recommendation + estimate). Only after the Client approves the recommendation does Milestone 3 (build) proceed, scoped to whatever approach was approved — including a fallback (e.g. assisted manual data entry) if automated scraping is not viable.

**What is not acceptable:** quietly assuming the scrapers work, building against guessed structure, hiding the fact that a portal blocks access, or running collection before the ToS review. If a source isn't viable, say so in writing — that is a successful Milestone 2, not a failure.

---

## 6. QUALITY & SEO BASELINE (applies across milestones)

- [ ] Mobile-first; Lighthouse **mobile Performance ≥ 90** on the home page and at least one project-detail page.
- [ ] All public pages render as static/ISR (no client-side fetching of indexable content).
- [ ] Structured data (JSON-LD) present on pages as built (Organization, project, FAQ).
- [ ] Canonical tags, per-tenant sitemap/robots correct for each live domain.
- [ ] No console errors on core pages; sensible 404 and loading states.
- [ ] Accessibility sanity: forms labelled, sufficient contrast, keyboard-usable.

---

## 7. ACCEPTANCE & SIGN-OFF PROCESS

- For each milestone, the team provides: a short written summary of what was done, a live demonstration (screen-share or deployed URL), and evidence against each checkbox.
- Client verifies against the acceptance criteria and the Section-3 non-negotiables. Client may run independent checks (e.g. query the database to confirm no unverified data is shown as fact; inspect pages for disclaimers; run Lighthouse).
- A milestone is **accepted** only when all its criteria and all applicable non-negotiables pass. Partial work is not accepted as complete.
- Defects found after acceptance that trace to a non-negotiable violation are corrected at no additional cost.

---

## 8. WHAT "DONE" MEANS — AND WHAT IT DOES NOT

To avoid any misunderstanding: **completing every milestone in this brief produces a fully-built, deployed, operable platform engine. It does not, by itself, produce a populated, revenue-generating business.** That requires the Client-owned inputs in Section 2.2 (verified data, real editorial, builder/broker relationships), which are outside this engagement.

The team's obligation is the **working machine, correctly built to the non-negotiables.** The Client's obligation is the **fuel** (data, content, relationships). Both are required for the project to succeed; this brief covers only the former. Neither party should treat "the engine is live" as "the project is complete."

---

## 9. SUMMARY OF THE FEW THINGS THAT MATTER MOST

If everything else is forgotten, these remain true:

1. **Never show unverified data as fact; never put fabricated data in production.** (This *is* the product.)
2. **Confirm scraping is legal before running it; report honestly if a source isn't viable.**
3. **Disclaimers everywhere; `gmada.in` never looks official.**
4. **Unique content per tenant; shared engine, not shared copy.**
5. **"Live" ≠ "complete."** The engine is yours to build; the data and relationships are the Client's.

---

*This brief is the controlling specification for the engagement. Acceptance criteria and the Section-3 non-negotiables are conditions of payment. Questions or proposed scope changes must be raised in writing and agreed before implementation.*

*[Signatures / commercial terms / timeline / payment schedule: to be completed by Client.]*
