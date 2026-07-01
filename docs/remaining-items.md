# Remaining Items — Client Action Required

*Generated: 2026-07-01*
*Codebase status: All Non-negotiables PASS. All engineering work complete. Pipeline running daily via GitHub Actions.*

---

## Blocking Items

### 1. Domain / DNS Setup (Blocks M1, M5)

| Domain | Action | Blocks |
|--------|--------|--------|
| `newchandigarh.in` | Point DNS to Vercel (added to Vercel 15d ago, `Third Party` registrar) | M1 |
| `nayagaon.in` | Point DNS to Vercel (added to Vercel 5d ago, `Third Party` registrar) | M5 |
| `ajitgarh.in` | Register domain + add CNAME to `cname.vercel-dns.com` | M5 |

**Steps:**
1. Register domains (if not already)
2. In Vercel dashboard → Project Settings → Domains → Add each domain
3. Update DNS records as instructed by Vercel (usually CNAME or A record)

---

### 2. GMADA Data Approach (Blocks M3)

The M2 report (`docs/milestone-2-report.md`) classifies GMADA as **Category B** (buildable with changes). Options:

| Option | Effort | Risk |
|--------|--------|------|
| **(a)** Skip for now — PSRERA data sufficient at launch | None | None |
| **(b)** Manual import — Client provides verified GMADA records as JSON | Low | Low |
| **(c)** Automated scraper — Build GMADA scrapers | High | Portal may change |
| **(d)** Data partnership — Source from third-party provider | Varies | Varies |

**Recommendation:** Start with (a) or (b). Automated scraping is not required for launch.

---

### 3. Guide Editorial Content (Blocks M6)

18 guides across 3 tenants currently show placeholder text with amber warning banners.

| Tenant | Guides Needed |
|--------|---------------|
| newchandigarh | 6 guides |
| nayagaon | 6 guides |
| ajitgarh | 6 guides |

**What to provide:** Title, summary, and body content for each guide. See `apps/web/src/tenants/*.ts` for the current placeholder structure.

---

### 4. Brand Assets / Logo (Blocks M6)

| Item | Status |
|------|--------|
| Logo (PNG/SVG) | Not provided — site uses text-only header |
| Favicon | Not configured |

**Action:** Provide logo and favicon files, or confirm text-only header is acceptable for launch.

---

## Resolved Items

| # | Item | Status |
|---|------|--------|
| 1 | Supabase key leaked in git history | ✅ Rotated |
| 2 | SMTP credentials | ✅ Mailtrap sandbox configured |
| 3 | WhatsApp number | ✅ Set in `.env.local` |
| 4 | Contact email | ✅ Set in `.env.local` |
| 5 | Env vars in Vercel | ✅ Set |
| 6 | Revalidation secret in GitHub | ✅ Set |
| 7 | Production data population | ✅ Pipeline runs daily via GitHub Actions cron. ~500+ projects promoted to production as of 2026-07-01. Remaining ~700 staged records promote at ~100/day — run `pnpm pipeline:promote --limit=2000` to catch up immediately. |
