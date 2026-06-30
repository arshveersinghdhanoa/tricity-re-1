# GMADA manual import (Client-supplied only)

Automated GMADA scraping is **not implemented**. Per Milestone 2 (`docs/milestone-2-report.md`), GMADA data requires a PDF/manual workflow with Client-verified sources.

## File

`packages/pipeline/data/manual/gmada.json` — array of records:

```json
[
  {
    "sourceReference": "https://gmada.gov.in/en/approved-colonies — Colony listing, retrieved 2026-06-01",
    "projectName": "Official colony name from GMADA document",
    "typeOfProject": "Residential Plotted",
    "promoterName": "GMADA",
    "location": "New Chandigarh",
    "pbreraNumber": "PBRERA-SAS80-PR0394"
  }
]
```

## Required fields

| Field | Notes |
|---|---|
| `sourceReference` | Official URL, PDF citation, or GMADA publication ID (min 8 chars) |
| `projectName` | As shown in the source document |

## Optional fields

| Field | Notes |
|---|---|
| `pbreraNumber` | Must match `^PBRERA-…` to be promotable to production |
| `typeOfProject`, `promoterName`, `location`, `address`, `contact` | Stored in `raw_payload` |

## Rejected patterns

- Fabricated IDs like `GMADA-M-0001`, `GMADA-L-1234` (legacy sample data)
- Legacy field `reraNumber` with fabricated GMADA format

## Import command

```bash
pnpm pipeline:dry-run --portal=gmada
pnpm pipeline:scrape --portal=gmada
```

Records write to **staging only** (Non-negotiable #4). Promotion requires a valid `PBRERA-` number.
