# Known Issues & Limitations

**Milestone:** M6 — Handover  
**Date:** 2026-06-18  

This document honestly lists all known issues, limitations, and deferred work in the current codebase.

---

## Critical

### 1. Vercel Project Mislinked

**Issue:** The `apps/web` directory is currently linked to Vercel project `work-s-projects9/web` (which belongs to a different app — `anyqr-api`). The correct project `work-s-projects9/tricity-re` exists but has no successful deployment.

**Impact:** The app cannot be deployed or served from `newchandigarh.in` until relinked.

**Fix:**
```bash
cd tricity-re/apps/web
vercel link --project tricity-re
vercel env pull
```
Then manually set all env vars matching `.env.example`. The `newchandigarh.in` domain must be added to the `tricity-re` project's Domains settings.

**Status:** Needs action before M1 is complete.

### 2. Supabase Service Role Key Leaked in Git History

**Issue:** The real `SUPABASE_SERVICE_ROLE_KEY=sb_secret_##############_######_########` was committed in plain text in the initial commit's `.env.example`.

**Mitigation:** The value has been replaced with placeholders in subsequent commits, but the secret remains in the git history. The key must be **rotated** (revoked and regenerated) in the Supabase dashboard as soon as possible.

**Fix:**
1. Rotate the key in Supabase Dashboard → Settings → API → Service Role Key → Revoke
2. Set the new key in Vercel env vars and GitHub Actions secrets
3. Consider force-pushing a clean history (see History Cleanup section in handover docs)

**Status:** Needs Client action immediately.

### 3. No Successful Production Deployment

**Issue:** No deployment of the Tricity RE app has ever succeeded on Vercel. The `tricity-re` project has 1 failed deployment. The domain `newchandigarh.in` currently serves a `/lander` redirect page (not our app).

**Impact:** There is no live site to demonstrate or use.

**Fix:** Relink Vercel project (issue #1), set correct env vars with real Supabase credentials (after rotation), and deploy.

---

## High

### 4. Hot-Lead Email Notifications Need SMTP Credentials

**Issue:** The notification system (`notify.ts`) silently skips when `SMTP_HOST`, `SMTP_USER`, `SMTP_PASS`, or `HOT_LEAD_NOTIFY_EMAIL` are not configured. Currently all are set to placeholder values.

**Impact:** Hot leads will not produce real notifications until Client provides SMTP credentials.

**Status:** Client-owned input.

### 5. GMADA — manual import only (automated scrape removed)

**Issue:** Automated GMADA HTML scraping with fabricated identifiers was removed (Non-negotiable #2/#6). GMADA data enters via Client-verified JSON only (`data/manual/gmada.json`). See `docs/milestone-2-report.md` recommendation B.

**Impact:** No GMADA colonies in staging/production until Client supplies verified records with `sourceReference`.

**Status:** By design pending Client input.

### 6. PSRERA enrichment — PDF done; CAPTCHA detail via manual import

**PDF layer (automated):** Promoter, location, address, contact, and property type are promoted from the open registered-projects PDF into `projects.metadata` and `property_type`. Run `pnpm pipeline:backfill-metadata` after migration `0006_project_enrichment.sql`.

**Detail layer (manual):** Project cost, area, facilities, parking, and colony type require the CAPTCHA-protected PSRERA search form. Automated detail scraping is intentionally **not** implemented. Use `pnpm pipeline:stage-details` with Client-verified JSON and `sourceReference`. See [psrera-detail-enrichment.md](./psrera-detail-enrichment.md).

**Prices:** Still separate — `stage-prices` → `promote`. Not extracted from PDF or detail pages automatically.

### 7. Tests Missing for New Files

**Issue:** The following new modules have no unit tests:
- `scrape.ts`
- `staging.ts`
- `promote.ts`
- `psrera/parser.ts`
- `psrera/downloader.ts`

**Impact:** Changes to pipeline code risk regression without test coverage.

**Status:** Should be added in a maintenance sprint.

---

## Medium

### 8. Placeholder Editorial Content

**Issue:** All guide content across all three tenants is placeholder text ("Placeholder editorial — Client to supply final content."). This affects SEO and user experience.

**Impact:** Visitors see empty/unhelpful guide pages. The placeholder summary text is indexed by search engines.

**Status:** Client-owned input (Section 2.2 of the brief).

### 9. Placeholder Contact Details

**Issue:** WhatsApp number (`919000000000`) and contact email (`contact@newchandigarh.in`) are placeholders. Lead form `wa.me` links will go to a wrong number.

**Impact:** Leads cannot reach the Client through the current contact channels.

**Status:** Client-owned input.

### 10. No Demo/Sample Data in Production (Intentional)

**Issue:** Per Non-negotiable #2, the production database is entirely empty — no projects, no prices, no builders.

**Impact:** The live site will show no content until the pipeline has run at least once (scrape → promote) and produced production data.

**Status:** By design — run `pnpm pipeline:scrape && pnpm pipeline:promote` after deployment.

### 11. `nayagaon.in` and `ajitgarh.in` Domains Not Registered

**Issue:** The tenant configs reference `nayagaon.in` and `ajitgarh.in` as their domains, but these domains have not been registered or pointed to Vercel.

**Impact:** Clone tenants are not accessible via their own hostnames.

**Status:** Client action required — register domains and add DNS records.

### 12. `_check_work` Directory in Repo Root

**Issue:** The `_check_work/` directory at the repo root appears to be a test/verification artifact with its own `.git` subdirectory. Its purpose and relation to the project is unclear.

**Impact:** Noise in the repo; potential confusion.

**Status:** Investigate and remove if not needed.

---

## Low

### 13. Lighthouse Performance Not Verified

**Issue:** The Milestone quality baseline requires mobile Performance ≥ 90 on Lighthouse. This has not been tested because there is no live deployment.

**Impact:** Unknown — may require optimization work.

**Status:** Test after first successful deployment.

### 14. `apps/web/.env.local` Contains Vercel OIDC Token

**Issue:** The file `apps/web/.env.local` contains a Vercel OIDC token that was pulled from the wrong project (`web` instead of `tricity-re`). This file is gitignored (`.env*`) so it won't be committed, but it should be cleaned up.

**Status:** Delete and regenerate after relinking.

### 15. `tmp/` Directory Not Gitignored

**Issue:** The `tmp/` directory contains downloaded PDFs (~1.7 MB). It is currently untracked but should be added to `.gitignore` to prevent accidental commits.

**Fix:** Add `tmp/` to `tricity-re/.gitignore`.
