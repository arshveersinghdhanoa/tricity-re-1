# Operations Note

**Milestone:** M6 — Handover  
**Date:** 2026-06-18  

---

## 1. How to Run the Data Pipeline

The pipeline has two distinct phases: **scrape** (download → parse → stage) and **promote** (validate → move to production).

### Prerequisites

Ensure these environment variables are set (in Vercel for automated runs, or in `.env` for manual runs):

| Variable | Purpose |
|---|---|
| `NEXT_PUBLIC_SUPABASE_URL` | Supabase project URL |
| `SUPABASE_SERVICE_ROLE_KEY` | Service role key (write access) |
| `SITE_URL` | Base URL for revalidation (e.g. `https://newchandigarh.in`) |
| `REVALIDATION_SECRET` | Secret for ISR cache purge |

### Manual Run (Off-Peak Hours Only)

```bash
# 1. Scrape PSRERA PDF → validate → write to staging_projects
pnpm pipeline:scrape

# 2. Promote valid staging rows → production projects table
pnpm pipeline:promote

# 3. Trigger ISR revalidation (or wait for next cron)
curl -X POST https://newchandigarh.in/api/revalidate \
  -H "Content-Type: application/json" \
  -d '{"secret":"your-revalidation-secret"}'
```

### Dry Run (No Database Writes)

```bash
pnpm pipeline:dry-run
```

This parses the PDF and validates records without writing anything. Use to check for drift.

### Target a Specific Tenant

```bash
pnpm pipeline:scrape --tenant=nayagaon
pnpm pipeline:promote --tenant=ajitgarh --limit=20
```

### Automated (GitHub Actions)

The pipeline runs daily at 02:00 UTC via `.github/workflows/pipeline.yml`. It can also be triggered manually:

1. Go to GitHub → Actions → "Data Pipeline — Daily Scrape & Promote" → "Run workflow"
2. Optionally override the portal and limit

### Monitoring

Check the most recent run:
1. GitHub → Actions → click the latest workflow run
2. Look for `[psrera]` logs: record count, valid count, written count
3. Look for `[promote]` logs: promoted count, skipped count, errors

**Normal values:**
- Records found: ~2000 (2013 total registered)
- Valid records: ~1186 (active projects, lapsed excluded)
- Promoted (first run): up to the limit (default 100)
- Errors: ideally 0

**Alert signals:**
- Record count drops by >10% → possible PDF format change (drift)
- Download fails → portal URL changed or blocked
- All records invalid → parser columns need re-mapping (see `docs/drift-handling.md`)
- Promotion errors → check Supabase connection or schema

---

## 2. How to Verify a Price Point

Prices are displayed under strict rules (Non-negotiable #1). To verify a price shown on the site:

1. **Check the database record:**
   ```sql
   select p.name, p.slug, pr.price, pr.verified, pr.source
   from projects p
   join prices pr on pr.project_id = p.id
   where p.rera_number = 'PBRERA-XXXXX-XX999';
   ```

2. **A factual price requires:**
   - `verified = true` (boolean)
   - `source IS NOT NULL` (string indicating where it came from, e.g. "psrera_pdf", "manual_entry")

3. **If `verified = false` or `source IS NULL`:**
   - The frontend will label it "Indicative" automatically
   - Do NOT manually set `verified = true` without genuine source verification

4. **To add a verified price point:**
   ```sql
   insert into prices (project_id, price, price_type, verified, source, source_url, recorded_at)
   values (
     (select id from projects where rera_number = 'PBRERA-XXXXX-XX999'),
     4500000,
     'transaction',
     true,
     'manual_entry',
     'https://source-document-url',
     now()
   );
   ```

---

## 3. How to Add a Builder

Builders are stored in the `builders` table with a foreign key to their projects.

```sql
-- Create a builder
insert into builders (name, slug, description, contact_phone, contact_email)
values (
  'ABC Developers',
  'abc-developers',
  'Description from Client-provided data',
  '+919000000000',
  'info@abcdevelopers.com'
);

-- Link projects to a builder
update projects set builder_id = (select id from builders where slug = 'abc-developers')
where rera_number in ('PBRERA-XXXXX-XX999', 'PBRERA-XXXXX-XX888');
```

**Important:** Only add builders when Client provides verified data. Do not fabricate builder profiles.

---

## 4. How to Triage Leads

### Overview

Leads are submitted via the contact form on each tenant site. The system scores them automatically.

### Lead Scoring Rules (from `@tricity/core`)

| Criterion | Points |
|---|---|
| Phone (≥10 digits) | +20 |
| Name (≥2 chars) | +10 |
| Email (contains @) | +10 |
| Project specified | +15 |
| Message (≥20 chars) | +10 |
| Budget (≥₹50 lakh) | +15 |
| Timeline "immediate" | +25 |
| Timeline "3months" | +15 |
| Timeline "6months" | +5 |

**Hot lead threshold:** score ≥ 60

### Viewing Leads

**Supabase SQL Editor:**
```sql
select id, name, phone, email, score, is_hot, created_at, context
from leads
order by score desc, created_at desc;
```

**Filter hot leads only:**
```sql
select * from leads where is_hot = true order by created_at desc;
```

### Hot Lead Notifications

When a lead scores ≥ 60:
1. The notification system (`apps/web/src/lib/notify.ts`) sends an email via SMTP
2. Email goes to the address configured in `HOT_LEAD_NOTIFY_EMAIL`
3. The email includes: name, phone, email, project, budget, timeline, message, source page, tenant

**If SMTP is not configured:** Notifications silently skip (logged to console). Set `SMTP_HOST`, `SMTP_PORT`, `SMTP_USER`, `SMTP_PASS`, `SMTP_FROM`, and `HOT_LEAD_NOTIFY_EMAIL` to enable.

### WhatsApp Link

Every lead form submission returns a `wa.me` deep link pre-filled with the project context. This link is shown to the user after form submission. Client must provide the real WhatsApp number via `CONTACT_WHATSAPP_NUMBER` env var.

### Anti-Spam

- **Honeypot field:** A hidden `website` field traps bots (if filled, submission is silently rejected)
- **Rate limiting:** Max 5 submissions per IP per 60 seconds (configured in `apps/web/src/app/api/leads/route.ts`)

---

## 5. How to Monitor Pipeline Health

| Check | Frequency | How |
|---|---|---|
| GitHub Actions run | Daily (cron) | Check latest workflow in Actions tab |
| Record count stability | Weekly | Run `pnpm pipeline:dry-run` and compare total to ~2013 |
| Supabase table growth | Weekly | Query `select count(*) from projects; select count(*) from staging_projects;` |
| First-of-month audit | Monthly | Manually inspect 10 records from `projects` for correctness |
| Portal accessibility | Before each run | Pipeline logs download success/failure |
| Deployed site health | Weekly | Visit home page, project pages; check console for errors |

## 6. Common Tasks

### Add a New Environment Variable

1. Add to `.env.example` with a placeholder
2. Set the real value in Vercel (Project Settings → Environment Variables)
3. Set the real value in GitHub Secrets (Settings → Secrets and variables → Actions)
4. Restart or redeploy

### Trigger a Manual Pipeline Run

GitHub → Actions → "Data Pipeline" → "Run workflow" → optionally set portal/limit → "Run workflow"

### Purge ISR Cache (Force-Refresh All Pages)

```bash
curl -X POST https://newchandigarh.in/api/revalidate \
  -H "Content-Type: application/json" \
  -d '{"secret":"your-revalidation-secret"}'
```
