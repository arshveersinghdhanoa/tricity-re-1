# Tenant Onboarding Procedure

Adding a new tenant site (e.g. a third city or sub-market) is a **config + content + DNS** task. Estimated effort: **~1 day** for the initial setup once the pattern is familiar.

---

## Overview

The platform uses a shared engine with per-tenant configuration. Each tenant gets:

- Its own **domain** and **hostname**
- Its own **branding** (name, tagline)
- Its own **set of guide shells** (placeholder editorial until Client supplies real content)
- Its own **contact info** (WhatsApp number, email)
- Its own **project/pricing data** stored in Supabase scoped by `tenant_id`

---

## Step-by-Step

### 1. Create the tenant config file

Create `apps/web/src/tenants/<slug>.ts` following the pattern in the existing tenants:

```typescript
import type { TenantConfig } from "@tricity/core";

export const mytenant: TenantConfig = {
  slug: "mytenant",
  domain: "mytenant.example.com",
  name: "My Tenant Site Name",
  tagline: "A short, search-engine-friendly tagline",
  contact: {
    whatsappNumber: process.env.CONTACT_WHATSAPP_NUMBER ?? "919000000000",
    email: process.env.CONTACT_EMAIL ?? "contact@mytenant.example.com",
  },
  homeIntro:
    "A 1-2 sentence description of the micro-market this tenant covers. Displayed on the homepage hero.",
  guides: [
    // Each tenant MUST have its own unique guide slugs and titles.
    // Never reuse guide slugs from other tenants — duplicate editorial across
    // domains causes search-engine duplicate-content penalties (Non-negotiable #5).
    {
      slug: "mytenant-guide-one",
      title: "Unique Guide Title One",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    // ... 5 more guides (minimum 6 recommended)
  ],
};
```

**Rules:**
- `slug` must be unique, lowercase, no spaces
- `domain` must match the production hostname (without `www.`)
- Every guide `slug` must be unique across ALL tenants (not just within this tenant)
- Every guide `title` should be meaningfully different from other tenants' titles
- All guides must have `isPlaceholder: true` until Client supplies real editorial

### 2. Register the tenant in the app

Edit `apps/web/src/tenants/index.ts`:

```typescript
import { registerTenant } from "@tricity/core";
import { newchandigarh } from "./newchandigarh";
import { nayagaon } from "./nayagaon";
import { ajitgarh } from "./ajitgarh";
import { mytenant } from "./mytenant";    // ← add

registerTenant(newchandigarh);
registerTenant(nayagaon);
registerTenant(ajitgarh);
registerTenant(mytenant);                // ← add

export { newchandigarh, nayagaon, ajitgarh, mytenant };  // ← add
```

### 3. Add the tenant to the Supabase database

Create a new migration file `supabase/migrations/0005_tenant_mytenant.sql`:

```sql
-- My Tenant clone (Milestone X)
insert into tenants (slug, domain, name, tagline)
values (
  'mytenant',
  'mytenant.example.com',
  'My Tenant Site Name',
  'A short tagline'
)
on conflict (slug) do nothing;
```

Apply the migration via the Supabase SQL editor or:

```bash
supabase db push
```

(This is required so that the `tenants` table has a row for foreign-key relationships in `projects`, `leads`, etc.)

### 4. Update tests

Add a test block in `apps/web/src/tenant.test.ts`:

```typescript
it("loads mytenant clone with unique editorial", () => {
  const tenant = getTenantBySlug("mytenant");
  expect(tenant).toBeDefined();
  expect(tenant?.domain).toBe("mytenant.example.com");
  expect(tenant?.guides).toHaveLength(6);
  expect(tenant?.guides.every((g) => g.isPlaceholder)).toBe(true);
  // Verify uniqueness against all other tenants
  const allSlugs = listTenants()
    .filter((t) => t.slug !== "mytenant")
    .flatMap((t) => t.guides.map((g) => g.slug));
  const mySlugs = tenant?.guides.map((g) => g.slug) ?? [];
  for (const slug of mySlugs) {
    expect(allSlugs).not.toContain(slug);
  }
});
```

### 5. Build and test

```bash
pnpm test     # All tests must pass
pnpm build    # Must succeed with no errors
```

### 6. Configure DNS

Add a DNS record pointing the tenant's domain to the Vercel deployment:

| Type | Name | Value |
|---|---|---|
| CNAME | `mytenant` | `cname.vercel-dns.com` |

Or A records pointing to Vercel's IPs, depending on the domain provider.

See [Vercel: Configure a custom domain](https://vercel.com/docs/projects/domains/add-a-domain).

### 7. Add the domain in Vercel

In the Vercel project dashboard:
1. Go to **Project Settings → Domains**
2. Add `mytenant.example.com`
3. Verify DNS propagation (Vercel will check automatically)

### 8. Deploy

Push to the production branch. Vercel will automatically deploy and the new domain will start serving the tenant.

### 9. Run the data pipeline for the new tenant

Once deployed, run the pipeline targeting the new tenant:

```bash
pnpm pipeline:scrape --tenant=mytenant
pnpm pipeline:promote --tenant=mytenant
```

This stages and promotes projects scoped to the new tenant's `tenant_id`.

### 10. Verify

- Visit `https://mytenant.example.com` — should show the tenant's name, tagline, and unique guides
- Visit `https://mytenant.example.com/guides` — should list only this tenant's guide shells
- Visit the primary tenant `https://newchandigarh.in` — should be unchanged

---

## Verification Checklist

- [ ] Tenant loads at its own hostname with correct branding
- [ ] Guide slugs are unique across all tenants
- [ ] Guide titles/content differ from all other tenants (Non-negotiable #5)
- [ ] `pnpm test` passes (all tests including new tenant test)
- [ ] `pnpm build` succeeds
- [ ] Primary tenant is unaffected
- [ ] Supabase `tenants` table has the new row
- [ ] Domain resolves over HTTPS
- [ ] Pipeline can target the new tenant

---

## Architecture Notes

- **Tenant resolution:** `resolveTenant()` in `apps/web/src/lib/tenant.ts` reads the `host` header and matches against registered tenant domains via `getTenantByHost()`. Falls back to `NEXT_PUBLIC_DEFAULT_TENANT` env var.
- **Data scoping:** All Supabase queries filter by `tenant_id` using the tenant slug to look up the UUID from the `tenants` table.
- **Build-time:** At build time there is no host header, so `resolveTenant()` returns the default tenant. SSG pages are generated for the default tenant; other tenants' pages are rendered on-demand via ISR.
- **Guides:** Rendered from the in-memory `TenantConfig.guides[]` array. Guides are placeholder shells until Client supplies real editorial content.
- **Projects:** Fetched from Supabase `projects` table, filtered by tenant slug. Populated via the data pipeline's promote step.
