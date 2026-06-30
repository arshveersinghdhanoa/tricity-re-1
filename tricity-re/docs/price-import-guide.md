# Price Import Guide

How to add pricing data to the Tricity RE platform.

## Overview

The platform supports two types of prices per project:

| Type | Meaning | Display |
|------|---------|---------|
| **`asking`** | Listing / broker asking price | Always labelled **"Indicative"** |
| **`transacted`** + `verified: true` + `source` | Verified sale price from a registry | Shown as **"Verified transacted price"** with source |
| **`transacted`** + `verified: false` | Unverified transaction claim | Labelled **"Indicative"** |

> **Non-negotiable #1**: A price is shown as a factual transacted price **only** when `verified = true` AND `source` is a non-empty string. All other prices are labelled "Indicative."

## JSON File Format

Create a JSON file with an array of price groups. Each group maps prices to a project by its RERA number:

```json
[
  {
    "reraNumber": "PBRERA-SAS06-PR0123",
    "prices": [
      {
        "priceType": "asking",
        "amount": 4200,
        "currency": "INR",
        "unit": "sqft",
        "verified": false,
        "source": null
      },
      {
        "priceType": "transacted",
        "amount": 3950,
        "currency": "INR",
        "unit": "sqft",
        "verified": true,
        "source": "Sub-Registrar Office, SAS Nagar",
        "recordedAt": "2026-05-15"
      }
    ]
  }
]
```

### Field Reference

| Field | Type | Required | Default | Notes |
|-------|------|----------|---------|-------|
| `reraNumber` | string | ✅ | — | Must match a project in the `projects` table |
| `priceType` | `"asking"` \| `"transacted"` | ✅ | — | |
| `amount` | number | ✅ | — | Price per unit (e.g., per sqft) |
| `currency` | string | ❌ | `"INR"` | |
| `unit` | string | ❌ | `"sqft"` | |
| `verified` | boolean | ✅ | — | Only `true` for genuinely verified sales |
| `source` | string \| null | ✅ | — | e.g., "Sub-Registrar Office, Mohali" |
| `recordedAt` | string (ISO date) | ❌ | now | When the price was recorded |

## How to Import

### 1. Create the price file

Save your JSON file (e.g., `data/prices.json`).

### 2. Ensure environment variables are set

Your `.env.local` must contain:

```
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
```

### 3. Build the pipeline (if not already built)

```bash
pnpm --filter @tricity/pipeline build
```

### 4. Run the import

```bash
# Import from the default path (data/prices.json)
pnpm pipeline:import-prices

# Or specify a custom file path
pnpm pipeline:import-prices --file=path/to/my-prices.json
```

### 5. Verify

The output will show:

```
[prices] Found 3 project price groups in file.
[prices] Import finished: 6 price entries imported, 0 errors.
```

Check the website — navigate to any project detail page. Prices will display with appropriate labels.

## How Prices Display on the Site

- **Project detail page** (`/projects/[slug]`): Shows all prices for the project
- **Asking prices**: Always show with an amber "Indicative" badge and disclaimer
- **Verified transacted prices**: Show with a green "Verified transacted price" badge and source attribution
- **Unverified transacted prices**: Treated the same as asking prices (labelled "Indicative")

## Troubleshooting

| Error | Cause | Fix |
|-------|-------|-----|
| `Project not found in database for RERA number` | The RERA number doesn't match any project | Check the RERA number spelling; it must match exactly |
| `Supabase not configured` | Missing environment variables | Set `NEXT_PUBLIC_SUPABASE_URL` and `SUPABASE_SERVICE_ROLE_KEY` |
| `Failed to parse JSON file` | Invalid JSON syntax | Validate the file with `jq . data/prices.json` |
