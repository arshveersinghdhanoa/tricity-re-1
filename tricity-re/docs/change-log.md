# Change Log — Modifications to Original Codebase

**Milestone:** M6 — Handover  
**Date:** 2026-06-18  
**Baseline commit:** `9f14f46` (Initial commit — original codebase)  
**Head commit:** `e79b459` (current HEAD)

---

## Summary

All changes were made to enable the following milestones:
- **M1 (Deploy):** Vercel configuration fixes for monorepo build
- **M3 (Pipeline):** PSRERA PDF downloader, parser, staging writer, and promotion logic
- **M4 (Leads):** Hot-lead email notification, budget/timeline fields on lead form
- **M5 (Multi-tenant):** Nayagaon and Ajitgarh tenant clones with unique guide shells
- **Cross-cutting:** Environment variable template, GitHub Actions CI/CD, documentation

---

## Modified Files

### 1. `tricity-re/.env.example`
- Replaced real Supabase credentials with placeholders (secret leak remediation)
- Added `SMTP_HOST`, `SMTP_PORT`, `SMTP_USER`, `SMTP_PASS`, `SMTP_FROM` for hot-lead notifications
- Added `HOT_LEAD_NOTIFY_EMAIL` for notification routing

### 2. `tricity-re/.gitignore`
- Added `.vercel` to ignore Vercel project metadata

### 3. `tricity-re/apps/web/package.json`
- Added `nodemailer` (runtime dependency for email notifications)
- Added `@types/nodemailer` (dev dependency for TypeScript types)

### 4. `tricity-re/apps/web/vercel.json`
- Multiple iterations to fix monorepo build on Vercel
- Removed `"framework": "nextjs"` preset (Next.js detection caused build failures)
- Final build command: `cd ../.. && pnpm --filter @tricity/core build && pnpm --filter @tricity/web build`
- Install command: `cd ../.. && pnpm install`

### 5. `tricity-re/apps/web/src/app/api/leads/route.ts`
- **Before:** `// TODO(Milestone 4): deliver hot-lead notification`
- **After:** Calls `sendHotLeadNotification()` with full lead context (name, phone, email, message, projectSlug, score, sourcePage, tenantSlug, budget, timeline)
- Added `budget` and `timeline` field extraction from request body
- Passes `budget` and `timeline` to `scoreLead()` for lead scoring
- Stores `budget` and `timeline` in lead `context` JSON field

### 6. `tricity-re/apps/web/src/components/LeadForm.tsx`
- Added "Budget (₹)" numeric input field
- Added "Timeline" dropdown select with options: Immediate, Within 3 months, Within 6 months, Just exploring
- Both fields submitted with the form data

### 7. `tricity-re/apps/web/src/tenant.test.ts`
- **Before:** Single test for `newchandigarh` tenant
- **After:** Four tests covering all 3 tenants:
  1. `newchandigarh` has 6 unique guide shells
  2. `nayagaon` loads with unique editorial (different slugs from newchandigarh)
  3. `ajitgarh` loads with unique editorial (different slugs from both others)
  4. Hostname resolution works for all 3 tenants via `getTenantByHost()`

### 8. `tricity-re/apps/web/src/tenants/index.ts`
- Added imports for `nayagaon` and `ajitgarh` tenant configs
- Registers both tenants via `registerTenant()`
- Exports all three tenants

### 9. `tricity-re/package.json`
- Added `pipeline:scrape` script: `pnpm --filter @tricity/pipeline scrape`
- Added `pipeline:promote` script: `pnpm --filter @tricity/pipeline promote`

### 10. `tricity-re/packages/pipeline/package.json`
- Added `@supabase/supabase-js` for staging/production database writes
- Added `pdf-parse` and `pdfjs-dist` for PDF parsing
- Added `scrape` and `promote` npm scripts

### 11. `tricity-re/packages/pipeline/src/config.ts`
- Added `pdfUrl` field to portal config (PSRERA PDF URL)
- Updated PSRERA selectors from `"PLACEHOLDER"` to concrete PDF-parser descriptions
- Added `isOffPeakHour()` function for polite-scraping enforcement

### 12. `tricity-re/packages/pipeline/src/cli.ts`
- **Before:** Only `inspect` and `dry-run` (dry-run returned placeholder text)
- **After:** Full CLI with `inspect`, `dry-run`, `scrape`, and `promote` commands
- Added `--portal`, `--tenant`, `--limit` argument support
- `dry-run` now actually scrapes and parses but skips the write step
- `scrape` downloads → parses → validates → writes to staging
- `promote` moves valid staging rows to production with de-duplication

---

## New Files

### 1. `tricity-re/.github/workflows/pipeline.yml`
- Daily cron at 02:00 UTC (off-peak window)
- Steps: checkout → pnpm setup → install → build pipeline → scrape PSRERA → promote → revalidate site
- Accepts `workflow_dispatch` inputs for manual trigger
- Secrets: `NEXT_PUBLIC_SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, `SITE_URL`, `REVALIDATION_SECRET`

### 2. `tricity-re/apps/web/.gitignore`
- Ignores `.vercel` and `.env*` files

### 3. `tricity-re/apps/web/src/app/api/revalidate/route.ts`
- `POST /api/revalidate` endpoint
- Authenticated via `REVALIDATION_SECRET`
- Purges ISR cache for `/`, `/projects`, `/projects/[slug]`, `/guides`, `/guides/[slug]`

### 4. `tricity-re/apps/web/src/lib/notify.ts`
- Exports `sendHotLeadNotification(lead: HotLeadInfo): Promise<boolean>`
- SMTP-based email sending via `nodemailer`
- Falls back silently when env vars not configured (logged, not thrown)

### 5. `tricity-re/apps/web/src/lib/notify.test.ts`
- Two tests: skips when env vars not configured; accepts optional budget/timeline

### 6. `tricity-re/apps/web/src/tenants/nayagaon.ts`
- Nayagaon tenant config with `nayagaon.in` domain
- 6 unique guide shells (different slugs from newchandigarh and ajitgarh)

### 7. `tricity-re/apps/web/src/tenants/ajitgarh.ts`
- Ajitgarh tenant config with `ajitgarh.in` domain
- 6 unique guide shells (different slugs from both other tenants)

### 8. `tricity-re/packages/pipeline/src/scrape.ts`
- `scrapePsrera()`: Downloads PSRERA PDF → parses → validates → writes to staging
- `buildStagingRecord()`: Converts parser output to staging schema with validation
- Dry-run support (skip write)

### 9. `tricity-re/packages/pipeline/src/staging.ts`
- `getSupabase()`: Creates Supabase client from env vars (guarded against placeholders)
- `writeToStaging()`: Inserts records one-by-one with error per record
- `writeManyStaging()`: Batch insert (preferred path)

### 10. `tricity-re/packages/pipeline/src/promote.ts`
- `promoteProjects()`: Fetches valid unpromoted staging rows → checks for RERA duplicates → inserts new projects or skips with status transition logging
- Logs to `promotion_log` and `status_transitions` tables
- `slugify()` utility

### 11. `tricity-re/packages/pipeline/src/psrera/` (directory)
- `downloader.ts`: HTTP fetch with polite User-Agent and 60s timeout
- `types.ts`: `ParserProjectRecord` and `ParserResult` interfaces
- `parser.ts`: Column-based positional text extraction from PDF via pdfjs-dist
- `index.ts`: Barrel exports

### 12. `tricity-re/supabase/migrations/0003_tenant_nayagaon.sql`
- Inserts nayagaon tenant row

### 13. `tricity-re/supabase/migrations/0004_tenant_ajitgarh.sql`
- Inserts ajitgarh tenant row

### 14. `tricity-re/src/` (directory)
- `download-pdf.mjs`: Quick PDF download script (used during exploration)
- `inspect-pdf.mjs`: Quick PDF text dump (used during parser development)

### 15. `tricity-re/docs/drift-handling.md`
- Column re-mapping procedure for PSRERA PDF parser
- Detection signals, step-by-step re-mapping, row classification tuning
- General drift monitoring schedule

### 16. `tricity-re/docs/tenant-onboarding.md`
- 10-step procedure for adding a new tenant domain
- Verification checklist and architecture notes

### 17. `docs/milestone-2-report.md` (repo root level)
- ToS/robots.txt review for PSRERA and GMADA
- Portal inspection results with data-source tables
- Recommendations and effort estimates

### 18. `_check_work/` (repo root level)
- Test/verification directory (submodule-like structure)

---

## Deleted / Removed

Nothing was deleted from the original codebase. All changes are additive or modifications to existing files.
