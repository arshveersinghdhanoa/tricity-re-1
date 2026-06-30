# Credential & Access Transfer Checklist

**Milestone:** M6 — Handover  
**Date:** 2026-06-18  

This document lists every service, credential, and access token used in the project. Transfer each to Client ownership before the engagement closes.

## 1. Supabase

| Item | Value / Location | Action |
|---|---|---|
| Project URL | `https://lxcifzawdzpfmhgsnbpg.supabase.co` | Confirm Client can log in |
| Project Dashboard | [Supabase Dashboard](https://supabase.com/dashboard/project/lxcifzawdzpfmhgsnbpg) | Add Client's email as Owner |
| Anon Key (publishable) | From Settings → API | Verify Client has it |
| Service Role Key | **⚠️ ROTATED** (was leaked in git history) | Use new key after rotation |
| Database | `postgres` on Supabase | Schema migrations applied: `0001_init`, `0002_tenant_newchandigarh`, `0003_tenant_nayagaon`, `0004_tenant_ajitgarh` |

**Action Required:** The `SUPABASE_SERVICE_ROLE_KEY` was committed in plain text in the initial commit. It has been scrubbed from git history, but the key itself must be **rotated** in the Supabase dashboard (Settings → API → Project API keys → Service Role Key → Revoke) and the new key set in Vercel env vars and GitHub Actions secrets.

## 2. Vercel

| Item | Value / Location | Action |
|---|---|---|
| Team | `work-s-projects9` | Confirm Client has access |
| Project | `web` (linked to wrong app) | ⚠️ See Known Issues |
| Correct Project | `tricity-re` (exists, 1 failed deploy) | Relink `apps/web` here |
| Domain | `newchandigarh.in` | Already added in Vercel DNS |
| Environment Variables | See `.env.example` for template | Must be set manually after relink |

**Action Required:** The current Vercel project (`web`) is linked to a different app (anyqr-api). The `tricity-re` project exists but needs env vars and a successful deploy. Run:
```
vercel link --project tricity-re
```
Then set all env vars matching `.env.example` with real values.

## 3. GitHub

| Item | Value / Location | Action |
|---|---|---|
| Repository | `anomalyco/trichd` | Confirm access |
| Actions secrets | `SUPABASE_SERVICE_ROLE_KEY`, `NEXT_PUBLIC_SUPABASE_URL`, `SITE_URL`, `REVALIDATION_SECRET` | Set in Settings → Secrets and variables → Actions |
| Workflows | `.github/workflows/pipeline.yml` | Daily cron at 02:00 UTC |

## 4. Domain Registrar

| Item | Value / Location | Action |
|---|---|---|
| Domain | `newchandigarh.in` | Confirm access to DNS settings |
| DNS | CNAME to `cname.vercel-dns.com` (or Vercel A records) | Already configured |
| Other tenants | `nayagaon.in`, `ajitgarh.in` | Need to be registered and DNS pointed |

## 5. SMTP (for hot-lead notifications)

| Variable | Purpose |
|---|---|
| `SMTP_HOST` | SMTP server hostname |
| `SMTP_PORT` | Port (587 for STARTTLS, 465 for SSL) |
| `SMTP_USER` | SMTP username |
| `SMTP_PASS` | SMTP password |
| `SMTP_FROM` | From-address (e.g. `alerts@newchandigarh.in`) |
| `HOT_LEAD_NOTIFY_EMAIL` | Where hot-lead alerts are sent |

**Action Required:** Client to provide real SMTP credentials. Placeholders in `.env.example` will cause notifications to silently skip.

## 6. Other

| Item | Notes |
|---|---|
| WhatsApp Business number | Currently placeholder `919000000000` — Client to provide real number |
| Contact email | Currently placeholder `contact@newchandigarh.in` — Client to provide |
| Revalidation secret | `REVALIDATION_SECRET` — generate a random string and set in Vercel + GitHub Secrets |
| Supabase service key (post-rotation) | Set in Vercel env + GitHub Actions secrets |

## Verification Checklist

- [ ] Client can log into Supabase dashboard
- [ ] Client can log into Vercel dashboard
- [ ] Client can push to GitHub repository
- [x] Service role key rotated and old key invalidated (Completed on 2026-06-25)
- [ ] All env vars set in Vercel for `tricity-re` project
- [x] All secrets set in GitHub Actions (Completed on 2026-06-25)
- [ ] Client can access domain DNS settings
- [ ] SMTP credentials provided and configured
- [ ] Real WhatsApp number and contact email configured

