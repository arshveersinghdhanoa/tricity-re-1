# Milestone 2 — Data Pipeline Discovery & Report

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
