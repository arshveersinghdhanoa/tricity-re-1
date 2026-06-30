# Tricity RE Platform

Trust- and data-led property intelligence platform for the Tricity micro-markets (Phase 1).

**Primary site:** [newchandigarh.in](https://newchandigarh.in)

## Monorepo structure

```
tricity-re/
├── apps/web/           # Next.js site (Vercel root: apps/web)
├── packages/core/      # Shared types, price logic, lead scoring
├── packages/pipeline/  # Data pipeline CLI (inspect / dry-run)
├── supabase/migrations/0001_init.sql
└── data/demo/          # FAKE demo seed — never use in production
```

## Requirements

- Node.js ≥ 20
- pnpm 9 (`corepack enable` or `npm i -g pnpm`)

## Quick start

```bash
pnpm install
cp .env.example .env.local   # fill Supabase + contact values
pnpm test
pnpm build
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000).

## Supabase setup (Milestone 1)

1. Create a Supabase project.
2. Run `supabase/migrations/0001_init.sql` in the SQL editor.
3. Set env vars (see `.env.example`):
   - `NEXT_PUBLIC_SUPABASE_URL`
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
   - `SUPABASE_SERVICE_ROLE_KEY` (server-only, for leads API)
4. **Do not** run `data/demo/seed-demo.sql` against production.

## Vercel deploy

- **Root Directory:** `apps/web`
- Set the same env vars in the Vercel project.
- Point `newchandigarh.in` DNS to Vercel; set `NEXT_PUBLIC_SITE_URL=https://newchandigarh.in`.

## Non-negotiables (summary)

1. Transacted prices are factual **only** when `verified = true` and `source` is set.
2. No fake/demo data in production.
3. Independence disclaimer on every page footer.
4. Scrapers write to **staging** only; promotion moves validated rows.
5. Unique editorial per tenant domain.
6. No automated scraping before Milestone 2 ToS review.

## Pipeline CLI

```bash
pnpm pipeline:inspect
pnpm pipeline:dry-run
```

Selectors are placeholders until Milestone 2/3.

## Scripts

| Command | Description |
|---------|-------------|
| `pnpm dev` | Start web app |
| `pnpm build` | Build all packages + web |
| `pnpm test` | Run all tests |
| `pnpm pipeline:inspect` | Inspect PSRERA/GMADA portals |
