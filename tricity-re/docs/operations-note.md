# Operations Note

## 1️⃣ Running & Monitoring the Data Pipeline

- **Run manually**:
  ```bash
  pnpm --filter @tricity/pipeline run
  ```
  This executes the full pipeline (inspect → scrape → promote) against the configured tenants.
- **GitHub Actions status**:
  - Navigate to the repository’s **Actions** tab on GitHub.
  - Locate the workflow named **`pipeline.yml`** (or similar).
  - Review the latest run – it will show each job (`inspect`, `scrape`, `promote`, `revalidate`).
  - Any failures appear with log links; click to view detailed console output.
- **Health checks**:
  - The pipeline writes logs to `tmp/pipeline.log` and emits a GitHub Actions artifact `pipeline‑report.json`.
  - Verify that the `promotion` step only moves rows that passed validation (see `packages/pipeline/src/promote.ts`).

## 2️⃣ Triggering a Site Revalidation

Force ISR cache refresh via the revalidation API:

```bash
curl -X POST https://<YOUR_DOMAIN>/api/revalidate \
  -H "Content-Type: application/json" \
  -d '{"secret":"<REVALIDATION_SECRET>"}'
```

- Replace `<YOUR_DOMAIN>` with the live tenant domain (e.g. `newchandigarh.in`).
- Set the secret in Vercel as **`REVALIDATION_SECRET`** (server-only — **never** use a `NEXT_PUBLIC_` prefix).
- A successful call returns `{ "revalidated": true }`.

## 3️⃣ Verifying Hot‑Lead Notifications

When a lead’s score ≥ 60, the API (`/api/leads`) sends an email via **Nodemailer** (`apps/web/src/lib/notify.ts`). To verify:
1. **Set environment variables** (add to `.env.local` or Vercel dashboard):
   ```
   SMTP_HOST=your.smtp.host
   SMTP_PORT=587
   SMTP_USER=your_user
   SMTP_PASS=your_password
   HOT_LEAD_NOTIFY_EMAIL=client@example.com
   SMTP_FROM=no-reply@newchandigarh.in
   ```
2. Submit a lead with a high score (use Postman or curl):
   ```bash
   curl -X POST https://newchandigarh.in/api/leads \
        -H "Content-Type: application/json" \
        -d '{"phone":"+919999999999","name":"Test","email":"test@example.com","projectSlug":"sample","budget":5000000,"timeline":"immediate"}'
   ```
3. Confirm the email arrives at `HOT_LEAD_NOTIFY_EMAIL`. Check the logs – successful sends print `"[notify] Hot lead email sent"`.

## 4️⃣ Adding a New Tenant (Step‑by‑Step)

1. **Create a tenant config**:
   - Copy an existing file in `apps/web/src/tenants/` (e.g., `nayagaon.ts`).
   - Update `slug`, `domain`, `name`, `tagline`, and contact details.
   - Add unique `guides` entries – ensure they differ from other tenants (non‑negotiable #5).
2. **Add CSS theming**:
   - In `apps/web/src/app/tenant-theme.css` add a new block:
     ```css
     .tenant‑<slug> { /* custom colors */ }
     ```
3. **Create content folder**:
   - `apps/web/src/content/<slug>/` and add markdown files for each guide.
   - The page components automatically load content based on `tenant.slug`.
4. **Map Domain in Vercel Dashboard**:
   - Go to your Vercel Project dashboard → **Settings → Domains**.
   - Add the new tenant domain (e.g. `nayagaon.in` or `ajitgarh.in`).
5. **Point DNS CNAME**:
   - In your domain registrar settings, point the domain's CNAME record to `cname.vercel-dns.com` (or A record to Vercel IP).
   - Once DNS propagates, Vercel routes requests to the Next.js app. The app resolves the tenant dynamically via request headers.
6. **Verify**:
   - Browse the new domain, check that the branding, guides, and metadata reflect the new tenant.
   - Run `pnpm test` – the tenant tests will confirm uniqueness.

## 5️⃣ Credential‑Transfer Checklist

| Item | Value / Access | Client Acknowledgment |
|------|----------------|-----------------------|
| **Supabase** | Project URL and `service_role` key (found in `supabase/config.json` or Supabase dashboard) | ✅ |
| **Vercel** | Dashboard access (owner) and project token for deploy previews | ✅ |
| **GitHub** | Repository write permissions, branch protection rules, and CI secret store access | ✅ |
| **SMTP / Email service** | SMTP host, port, user, password, and `HOT_LEAD_NOTIFY_EMAIL` destination | ✅ |
| **Third‑party APIs** (e.g., Google Maps, Stripe if used) | API keys & secret tokens | ✅ |

*Please have the client sign off on the above checklist (email reply or signed document) and store the acknowledgment in the `docs/credential‑transfer-checklist.md` file.*

## 6️⃣ Legality & Scraping Compliance (Non‑Negotiable #6)

- **Milestone 2 report:** [docs/milestone-2-report.md](./milestone-2-report.md) — ToS/robots review, inspect findings, recommendations, M3 estimates.
- **Approval log:** [docs/milestone-2-approval.md](./milestone-2-approval.md) — Client sign-off before any production scraping.
- **Execution order:** No automated scraping against PSRERA/GMADA until M2 is approved. Pipeline writes to **staging only**; production via `promote` only.
- **Production data:** The database may be empty at launch (by design). Data appears only after approved scrape → promote or Client-verified price import — never via demo seeders (removed).

## 7️⃣ Operational Runbook: Prices, Builders, & Leads

### A. How to Verify a Price Point
Under **Non-Negotiable Requirement #1**, verified price records must show a genuine source in the UI, while unverified or source-less records are labeled as "Indicative" (using `price_type='asking'` and `verified=false`).

To add and verify price points for a project:
1. **Prepare staging JSON**: Write the pricing records to `data/staging-prices.json` (or any staging JSON file). If the price is verified, set `verified: true` and specify a real `source` (e.g. Deed Book number, registered sale document reference, or builder's official price list).
   *Example staging JSON record:*
   ```json
   [
     {
       "rera_number": "PBRERA-SAS80-PR0394",
       "amount": 7500000,
       "price_type": "transacted",
       "verified": true,
       "source": "Registered Deed Book IV, Vol. 102, Page 45"
     }
   ]
   ```
2. **Import to Staging**: Run the CLI stage command:
   ```bash
   pnpm --filter @tricity/pipeline run stage-prices --file=data/staging-prices.json
   ```
   This validates the input fields (ensuring RERA formats and positive amounts) and inserts them into the `staging_prices` table.
3. **Promote to Production**: Run the promote command:
   ```bash
   pnpm --filter @tricity/pipeline run promote
   ```
   The pipeline executes `promoteStagingPrices()` (see [promote.ts](file:///d:/work/trichd/tricity-re/packages/pipeline/src/promote.ts)). Only records where `verified=true` AND a non-empty `source` is provided will be promoted as `verified=true`. Otherwise, they will fall back to `verified=false` (labeled "Indicative").

### B. How to Add a Builder
Because builders are scoped per tenant in the `builders` table, you need the tenant's UUID before inserting a new builder:
1. **Get the Tenant UUID**: Query the `tenants` table for the matching tenant's slug:
   ```sql
   select id from tenants where slug = 'newchandigarh';
   ```
2. **Insert the Builder**:
   ```sql
   insert into builders (tenant_id, name, slug)
   values (
     'YOUR_TENANT_UUID_HERE', 
     'DLF Homes', 
     'dlf-homes'
   )
   on conflict (tenant_id, slug) do nothing;
   ```
3. **Map Scraper Data**: When projects are promoted, they associate with builders via the `builder_id` field. Ensure the scraped promoters map correctly to this builder slug in your data pipeline.

### C. How to Triage Leads

Lead scoring is implemented in `packages/core/src/leads.ts` (hot threshold **≥ 60**):

| Signal | Points |
|--------|--------|
| Valid phone (≥ 10 digits) | 20 |
| Name (≥ 2 chars) | 10 |
| Email (contains `@`) | 10 |
| Project slug provided | 15 |
| Message (≥ 20 chars) | 10 |
| Budget ≥ ₹50 lakh | 15 |
| Timeline `immediate` | 25 |
| Timeline `3months` | 15 |
| Timeline `6months` | 5 |

**Hot lead:** score ≥ 60 → `is_hot = true` → email via Nodemailer to `HOT_LEAD_NOTIFY_EMAIL` (if SMTP configured).

**Rate limiting:** `/api/leads` counts recent submissions per IP in the `leads` table (works across Vercel serverless). Max 5 requests per IP per minute.

**Triage steps:**

1. Check `HOT_LEAD_NOTIFY_EMAIL` inbox for `[HOT LEAD]` subjects.
2. Query Supabase: `select name, phone, email, score, created_at from leads where is_hot = true order by created_at desc;`
3. Follow up via WhatsApp using the `waLink` returned by the API.

---
*Generated by Antigravity AI assistant.*

