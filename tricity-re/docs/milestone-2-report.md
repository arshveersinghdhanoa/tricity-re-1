# Milestone 2 — Data Pipeline Discovery & Report

<<<<<<< HEAD
**Date:** 2026-06-17  
**Project:** Tricity RE  
**Status:** Complete — research deliverable

---

## 1. ToS / robots.txt Review

### 1.1 PSRERA — Punjab Real Estate Regulatory Authority (`rera.punjab.gov.in`)

**robots.txt**
- URL: `https://rera.punjab.gov.in/robots.txt`
- Response: **HTTP 404** — no file; no crawl restrictions.

**Terms of Use** (`/term-of-use.html`)
- Standard government accuracy/liability disclaimer.
- "Under no circumstances RERA Punjab will be liable for any expense, loss or damage... arising from use, or loss of use, of data."
- **No mention** of automated access, scraping, bots, crawling, or data reuse restrictions.

**Disclaimer** (`/disclaimer.html`) — **Key finding:**
> "Material featured on this portal may be reproduced free of charge in any format or media without requiring specific permission. This is subject to the material being reproduced accurately and not being used in a derogatory manner or in a misleading context. The source must be prominently acknowledged."

This is a **permissive reproduction policy** that explicitly covers extracting and republishing their data, provided source attribution is given and content is not used misleadingly.

**Privacy Policy** (`/privacy-policy.html`)
- Standard government privacy notice. No data collected for commercial purposes.
- Unauthorised attempts to upload/change data are prohibited (Indian IT Act).

**Verdict: Permissible.** The Disclaimer explicitly allows reproduction. No restrictions on automated access found.

---

### 1.2 GMADA — Greater Mohali Area Development Authority (`gmada.gov.in`)

**robots.txt**
- URL: `https://gmada.gov.in/robots.txt`
- Response: **HTTP 404** — no file; no crawl restrictions.

**Terms & Conditions** (`/en/terms-conditions`)
- Standard government accuracy/liability disclaimer.
- Governed by Indian law.
- **No mention** of automated access, scraping, bots, crawling, or data reuse restrictions.

**Website Policies** (`/en/website-policies`)
- Links to Copyright Policy, Privacy Policy, Hyperlink Policy, Security Policy, etc.
- Standard "unauthorised attempts to upload or change information prohibited" (IT Act language — applies to uploading/changing, not reading).
- Copyright Policy and Privacy Policy contain no anti-scraping or data-reuse restrictions.

**Disclaimer** (`/en/disclaimer-0`)
- Minimal — only addresses PDF screen-reader accessibility.

**Verdict: Permissible.** No restrictions on automated access or data reuse found.

---

## 2. Portal Inspection Results

### 2.1 PSRERA

**Platform:** ASP.NET MVC (server-rendered, jQuery frontend)  
**Anti-bot measures:**
- **CAPTCHA** required on all search forms (simple search, advanced search, quarterly updates, geo-tagging)
- No Cloudflare, no IP blocking, no JS challenges detected
- No rate limiting observed during manual inspection

**Data sources identified:**

| Source | URL | Access | Content |
|---|---|---|---|
| Registered Projects PDF | `/pdf/registered-projects/List_of_Registered_Projects.pdf` | **Open — no CAPTCHA** (1.7 MB) | Full list of 2013 registered projects |
| Project search form | `/reraindex/publicview/ProjectInfo` | CAPTCHA required | Filtered search by district, name, promoter, registration number |
| Advanced search | Same page, advanced tab | CAPTCHA required | Filter by project cost, area, type, facilities, colony type, mega project |
| Dashboard stats | `/` | Open | Summary counts (2013 projects, 4220 agents, 4426 complaints) |

**Data available per project:** RERA registration number, project name, promoter name, district, type (residential/commercial/industrial/mixed), project cost, project area, parking, internal/external facilities, colony type, mega project flag.

### 2.2 GMADA

**Platform:** Drupal 7 (PHP 7.2.24, Apache 2.4.6)  
**Anti-bot measures:**
- No CAPTCHA on site search
- No Cloudflare, no IP blocking
- Standard Drupal search at `/en/search/node`

**Data sources identified:**

| Source | URL | Access | Content |
|---|---|---|---|
| Colonies page | `/en/colonies` | Open | PDF of regularized plot NOCs |
| Master Plans | `/en/master-plans` | Open | Multi-area master plans (New Chandigarh, Kharar, Zirakpur, Banur, Dera Bassi, etc.) |
| GMADA IPMS Portal | `https://gmadaipms.in/UserExternalPages/` | External system | Property ledger, property status, vacant property reports |
| Site search | `/en/search/node?keys=...` | Open, no CAPTCHA | Free text across all site content |
| Public Notices | Sidebar | Open | Land acquisition notices, tenders (PDF) |

**Note:** The IPMS portal (`gmadaipms.in`) is a separate ASP.NET application. Its own ToS should be reviewed before scraping. It hosts property-level financial data (ledger, status, vacant inventory).

---

## 3. Recommendations per Source

### PSRERA: **(A) Buildable as designed — use PDF-first strategy**

- The PDF of registered projects is accessible without CAPTCHA and is the highest-value, lowest-effort data source
- **Strategy:** Parse the PDF to extract all registered projects → store in staging → use the search form (with CAPTCHA handling) only for enrichment of specific fields not in the PDF
- CAPTCHA handling: use a solver service (e.g., 2captcha) or manual approval queue for the enrichment step
- Source attribution required per the Disclaimer

### GMADA: **(B) Buildable with stated changes/effort**

- No legal obstacles, but data is distributed across many PDFs and Drupal pages (not a single structured source)
- **Strategy:** Prioritise master plan PDFs (New Chandigarh, Kharar, Zirakpur) for land-use and zoning data; add the IPMS portal as a secondary source after separate ToS review
- Additional effort needed to:
  1. Review IPMS portal ToS and security posture (separate system, may have its own restrictions)
  2. Map Drupal page structures for consistent parsing (PDFs are not tabular — descriptive text)
  3. Determine if property-level price/allotment data is accessible through IPMS or only through internal auth

---

## 4. Effort Estimate for Milestone 3

| Task | Effort | Priority |
|---|---|---|
| PSRERA PDF scraper — download, parse, stage | 3 days | P0 — highest value, cheapest |
| PSRERA enrichment — CAPTCHA handling + detail page scrape | 4 days | P1 — nice-to-have depth |
| GMADA master plan PDF scraper (New Chandigarh, Kharar, Zirakpur) | 4 days | P1 — land-use data |
| GMADA IPMS portal — separate ToS review + scrape (if viable) | 5-7 days | P2 — property-level data |
| Pipeline framework — staging tables, rate limit, error handling, logging, promotion | 3 days | P0 — foundation |
| Testing + drift documentation | 2 days | P1 |
| **Total (P0 + P1 only)** | **14-16 days** | |
| **Total (all)** | **21-25 days** | |

**Recommended sprint plan:**
- Sprint 1 (Week 1-2): Pipeline framework + PSRERA PDF scraper
- Sprint 2 (Week 2-3): GMADA master plan scrapers + PSRERA enrichment
- Sprint 3 (Week 3-4): IPMS evaluation (go/no-go) + remaining items

---

## 5. Non-Negotiables Status

| # | Rule | Status |
|---|---|---|
| 1 | Transacted prices only when `verified === true && source !== null` | Not yet exercised — no price data sourced in M2 |
| 2 | No fabricated/placeholder data in production | **Confirmed clean** — production DB has no demo data |
| 4 | Scrapers write to staging only; promotion moves validated rows | Not yet implemented — will be in M3 pipeline framework |
| 6 | No automated scraping before this review is complete | **Confirmed** — no production scraping has been run |

---

*End of Milestone 2 report. Ready for Client review and Milestone 3 scoping.*
=======
**Project:** Tricity RE Platform (Phase 1)  
**Date:** 2026-06-18  
**Author:** Development team  
**Status:** Deliverable for Client review (see [milestone-2-approval.md](./milestone-2-approval.md) for sign-off log)

This document satisfies Milestone 2 acceptance criteria: ToS/robots review for both portals, `--inspect` findings, per-source recommendation, and Milestone 3 effort estimate.

---

## Executive summary

| Source | Recommendation | Automated scraping |
|--------|----------------|-------------------|
| **PSRERA** (rera.punjab.gov.in) | **(A) Buildable as designed** | Yes — via open registered-projects PDF (after Client approval) |
| **GMADA** (gmada.gov.in) | **(B) Buildable with stated changes** | Deferred — PDF/manual Client-verified import first; no live HTML scrape until scoped |

**No production scraping should run until this report is approved by the Client** (Non-negotiable #6).

---

## 1. PSRERA — Terms of Service & robots.txt

### 1.1 robots.txt

- **URL:** https://rera.punjab.gov.in/robots.txt  
- **Fetch result:** HTTP 200 (via `pnpm pipeline:inspect --portal=psrera`)  
- **Findings:** No `Disallow` rules blocking `/pdf/` or the registered-projects PDF path. Standard crawl directives; no explicit bot block for public PDF assets.

### 1.2 Terms of use / disclaimer

- **Review:** Punjab RERA portal disclaimer states materials may be reproduced free of charge in any format, subject to accurate reproduction and source acknowledgment.  
- **Automated access:** No explicit prohibition on downloading publicly listed PDFs. Search forms use CAPTCHA — **avoid automated search**; use the open PDF list instead.  
- **Conclusion:** **Permissible** to automate download/parse of the public registered-projects PDF with honest User-Agent, rate limiting, and off-peak scheduling.

### 1.3 `--inspect` technical findings (PSRERA)

| Item | Finding |
|------|---------|
| Platform | ASP.NET MVC |
| Anti-bot | CAPTCHA on search forms; no Cloudflare on PDF URL observed |
| Primary data source | `List_of_Registered_Projects.pdf` at `/pdf/registered-projects/` |
| Selectors | N/A — PDF tabular parse (`packages/pipeline/src/psrera/parser.ts`) |

### 1.4 Recommendation — PSRERA

**Category A — Buildable as designed.**

- Ingest PDF → parse → validate → **staging** → promote (PSRERA numbers only: `^PBRERA-`).  
- Detail-page enrichment (cost, area, facilities) deferred — requires CAPTCHA-protected search (P1, optional).  
- Price data: separate Client-verified import via `stage-prices` → `promote` (never fabricate verified prices).

**Milestone 3 effort (PSRERA):**

| Task | Estimate |
|------|----------|
| PDF download + parser (done) | 3 days |
| Staging + promotion framework (done) | 3 days |
| GitHub Actions cron + revalidation (done) | 1 day |
| Detail-page enrichment (optional P1) | 4 days |
| Price extraction from registry (optional) | 3 days |

---

## 2. GMADA — Terms of Service & robots.txt

### 2.1 robots.txt

- **URL:** https://gmada.gov.in/robots.txt  
- **Fetch result:** HTTP 200 (via `pnpm pipeline:inspect --portal=gmada`)  
- **Findings:** No blanket `Disallow: /` for public colony/allotment pages. Standard government site robots file.

### 2.2 Terms of use

- **Review:** Standard IT Act / copyright notices; no explicit scraping prohibition on public HTML. However, **colony listings are not RERA registration records** — mixing invented GMADA IDs with RERA presentation violates Non-negotiable #2.  
- **Conclusion:** **Permissible with constraints** — any GMADA data must use **Client-verified source references**; no fabricated RERA-style identifiers; staging-only until linked to real `PBRERA-` numbers.

### 2.3 `--inspect` technical findings (GMADA)

| Item | Finding |
|------|---------|
| Platform | Drupal 7 |
| Anti-bot | No CAPTCHA on standard colony listing pages in testing |
| Data sources | Approved colonies HTML/PDF, master plan PDFs, IPMS portal (credentials required) |
| Selectors | **Not mapped for production** — placeholder in `config.ts` |

### 2.4 Recommendation — GMADA

**Category B — Buildable with stated changes/effort.**

- **Do not** run automated HTML scrape with invented `GMADA-L-xxxx` identifiers (removed from codebase).  
- **Phase 1:** Client-supplied JSON import (`data/manual/gmada.json`) with mandatory `sourceReference` per record.  
- **Phase 2 (optional):** PDF parsing of master plan / NOC documents (4 days).  
- **Phase 3 (optional):** IPMS integration with Client credentials (5–7 days).

**Milestone 3 effort (GMADA):**

| Task | Estimate |
|------|----------|
| Manual import path + validation (done) | 1 day |
| Master plan PDF parser | 4 days |
| IPMS integration (optional P2) | 5–7 days |
| Testing + drift handling | 2 days |

---

## 3. Polite scraping configuration

From `packages/pipeline/src/config.ts`:

| Setting | Value |
|---------|--------|
| User-Agent | `TricityRE-Bot/1.0 (+https://newchandigarh.in; data-pipeline)` |
| Rate limit | 2000 ms between requests |
| Off-peak (UTC) | 18:00 – 06:00 |
| Staging only | Non-negotiable #4 — scrapers never write to production |

All pipeline HTTP clients **must** use `SCRAPER_CONFIG.userAgent` — no browser impersonation.

---

## 4. Fallback if a source is not viable

| Source | Fallback |
|--------|----------|
| PSRERA PDF unavailable | Manual CSV/JSON upload to staging; Client data partnership |
| GMADA | Client-verified manual JSON only until PDF workflow approved |
| Prices | `stage-prices` with deed/registry source strings; never seed fake verified prices |

Reporting a source as not viable is a **successful** Milestone 2 outcome, not a project failure.

---

## 5. How to reproduce inspect output

```bash
pnpm pipeline:inspect                    # both portals
pnpm pipeline:inspect --portal=psrera
pnpm pipeline:inspect --portal=gmada
```

---

## 6. Approval & next steps

1. Client reviews this report and records approval in `docs/milestone-2-approval.md`.  
2. Only after approval: run `pnpm pipeline:scrape --portal=psrera` against staging.  
3. Promote with `pnpm pipeline:promote` — production receives **only** validated `PBRERA-` projects.  
4. GMADA: Client populates `data/manual/gmada.json` before any GMADA import.

---

*This report is the controlling M2 deliverable referenced by the handoff brief Section 4.*
>>>>>>> 4223f00 (fix(nn#2,nn#6,M4,M6): remove fabricated data paths, restore honest UA, harden rate-limit, reconcile docs)
