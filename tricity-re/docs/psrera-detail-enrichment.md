# PSRERA project enrichment

PSRERA data arrives in two layers — both respect Non-negotiable #2 (no fabricated data) and #4 (staging before production).

## Layer 1 — PDF fields (automated)

The open **List_of_Registered_Projects.pdf** already includes:

| Field | Example |
|---|---|
| RERA number | `PBRERA-SAS80-PR0394` |
| District | SAS Nagar |
| Promoter | Builder name |
| Project name | |
| Property type | Residential / Commercial / … |
| Location | |
| Address | |
| Contact | |

**Apply to existing production projects:**

```bash
# Run migration 0006_project_enrichment.sql in Supabase first
pnpm pipeline:backfill-metadata
```

**New scrape → promote** automatically writes `property_type`, `metadata`, and a richer `description`.

---

## Layer 2 — CAPTCHA-gated detail fields (manual, Client-verified)

Fields on the PSRERA **search/detail page** require CAPTCHA:

- Project cost  
- Total area  
- Facilities  
- Parking  
- Colony type  

Automated scraping of these pages is **not implemented** (M2 legal posture). Import them after a human retrieves the detail page:

### 1. Edit `data/staging-details.json`

```json
[
  {
    "reraNumber": "PBRERA-SAS80-PR0394",
    "sourceReference": "https://rera.punjab.gov.in/... — viewed 2026-06-20 after CAPTCHA",
    "projectCost": "₹120 Cr (RERA filing)",
    "totalArea": "18.2 acres",
    "facilities": ["Clubhouse", "Swimming pool", "Park"],
    "parking": "2-level basement + stilt",
    "colonyType": "Group Housing"
  }
]
```

`sourceReference` is **required** (min 12 characters).

### 2. Stage and promote

```bash
pnpm pipeline:stage-details
pnpm pipeline:promote    # merges details into projects.metadata
```

### 3. Revalidate site

```bash
curl -X POST https://newchandigarh.in/api/revalidate \
  -H "Content-Type: application/json" \
  -d '{"secret":"YOUR_REVALIDATION_SECRET"}'
```

Detail fields render on `/projects/[slug]` under **RERA filing details** with the source citation.

---

## Prices (separate path)

Per-square-foot **asking** and **verified transacted** prices use `stage-prices` → `promote`, not this enrichment flow. See [price-import-guide.md](./price-import-guide.md).
