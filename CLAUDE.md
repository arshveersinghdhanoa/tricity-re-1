# Tricity RE — internal context

Controlling spec: `../Tricity_RE_Dev_Handoff_Brief.md` (parent folder).

## Architecture

- **apps/web**: Next.js 15 App Router, ISR, tenant config in code + optional Supabase data
- **packages/core**: Price display rules (Non-negotiable #1), lead scoring, tenant registry
- **packages/pipeline**: Legal-first scraper CLI; placeholder selectors by design

## Milestone map

| MS | Focus |
|----|-------|
| M1 | Stand-up, deploy, schema, empty production |
| M2 | ToS/robots review + `--inspect` report |
| M3 | Pipeline build (post-approval) |
| M4 | Hot-lead notification (implemented via SMTP/nodemailer) |
| M5 | nayagaon / ajitgarh tenant clones |
| M6 | Handover |

## Price display rule

```ts
// factual transacted ONLY if:
verified === true && source !== null
// everything else → "Indicative"
```
