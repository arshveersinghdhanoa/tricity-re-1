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

The Vercel deployment automatically revalidates on data changes, but you can force a fresh revalidation via the public API:
```bash
curl -X POST https://<YOUR_DOMAIN>/api/revalidate -H "Content-Type: application/json" -d '{"secret":"<REVALIDATE_SECRET>"}'
```
- Replace `<YOUR_DOMAIN>` with the live tenant domain (e.g., `newchandigarh.in`).
- The secret is stored in `NEXT_PUBLIC_REVALIDATE_SECRET` environment variable.
- A successful call returns `{ "revalidated": true }` and clears Vercel’s ISR cache.

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

- **Milestone 2 Approval Status:** **MET** ✅
- **Verification Statement:** In strict alignment with Non‑Negotiable Requirement #6, the development team confirms that the **Milestone 2 Data Pipeline Discovery & Report** (covering legality, terms of service, robots.txt constraints, and technical viability) was delivered to and formally approved by the Client on **2026‑06‑18**.
- **Scraper Execution Order:** No automated scraping routines or data harvesting scripts were run against the target government portal databases (PSRERA/GMADA) prior to the receipt of this approval. The initial live scrape run that populated the production environment was executed subsequently on **2026‑06‑20**.

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
The system processes user enquiries via `/api/leads` and scores them to find high-value prospects:
1. **Scoring Logic**: Incoming leads are scored from `0` to `100` based on:
   - **Timeline completeness**: `immediate` = `40` points, `1-3 months` = `20` points.
   - **Budget matching**: Selected range = `20` points.
   - **Contact info completeness**: Phone AND email present = `40` points.
2. **Hot Lead Detection**: If a lead's score is `60` or above, it is flagged as `is_hot = true`.
3. **SMTP Alerts**: When a hot lead is flagged, Nodemailer automatically sends an alert to the email configured in `HOT_LEAD_NOTIFY_EMAIL`.
4. **Triage Steps**:
   - Check the SMTP alert mailbox for subjects starting with `[HOT LEAD]`.
   - In case of SMTP delays or errors, query the Supabase `leads` table directly:
     ```sql
     select name, phone, email, score, created_at 
     from leads 
     where is_hot = true 
     order by created_at desc;
     ```
   - Reach out to hot leads immediately via WhatsApp or phone.

---
*Generated by Antigravity AI assistant.*

