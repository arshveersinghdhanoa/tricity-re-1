# Drift Handling — Selector Re-mapping Procedure

When an external data portal changes its layout, format, or access pattern, the pipeline's extraction logic can "drift" — producing fewer records, missing fields, or errors. This document describes how to detect drift and re-map selectors for each portal.

## Quick Detection

Run a dry-run and compare the record count against expected totals:

```bash
pnpm pipeline:dry-run
```

| Signal | Likely cause |
|---|---|
| Record count drops by >10% vs last known total | Column boundaries shifted in PDF |
| Many records missing district/RERA values | Table layout changed or new page format |
| `errors` array in output contains parse failures | New/deleted columns or structural change |
| Download fails or returns unexpected content | URL changed or portal redesigned |
| CAPTCHA appears on previously open URL | Portal added anti-bot protection |

## PSRERA PDF Parser (`packages/pipeline/src/psrera/parser.ts`)

### Architecture

The parser uses **column-based positional extraction** via pdfjs-dist. It:

1. Downloads the registered-projects PDF from a fixed URL
2. Extracts text items with x,y coordinates from each page
3. Groups items into rows by y-position proximity (within 4px)
4. Classifies rows as headers, data starts (have district name), continuation rows, or district-total rows
5. Assigns text items to columns based on x-position ranges (`COLUMNS` array)
6. Reconstructs RERA numbers by concatenating fragments split across adjacent rows

### Column Boundary Re-mapping

The critical constant is `COLUMNS` at the top of `parser.ts`:

```typescript
const COLUMNS = [
  { name: "sno", xMin: 0, xMax: 70 },
  { name: "district", xMin: 70, xMax: 145 },
  { name: "promoter", xMin: 145, xMax: 255 },
  { name: "project", xMin: 255, xMax: 360 },
  { name: "rera", xMin: 360, xMax: 450 },
  { name: "type", xMin: 450, xMax: 530 },
  { name: "location", xMin: 530, xMax: 660 },
  { name: "address", xMin: 660, xMax: 790 },
  { name: "contact", xMin: 790, xMax: 9999 },
];
```

### Step-by-Step Re-mapping Procedure

When drift is suspected:

1. **Download the current PDF** and save it locally:
   ```bash
   curl -o /tmp/current.pdf "https://rera.punjab.gov.in/pdf/registered-projects/List_of_Registered_Projects.pdf"
   ```

2. **Run the debug script** to inspect positional data on page 1:
   ```bash
   node -e "
   const { getDocument } = await import('pdfjs-dist/legacy/build/pdf.mjs');
   const fs = await import('fs');
   const buf = fs.readFileSync('/tmp/current.pdf');
   const doc = await getDocument({ data: new Uint8Array(buf) }).promise;
   const page = await doc.getPage(1);
   const raw = await page.getTextContent();
   for (const item of raw.items) {
     const x = Math.round(item.transform[4]);
     const y = Math.round(item.transform[5]);
     console.log(x + ',' + y + ': ' + JSON.stringify(item.str));
   }
   "
   ```

3. **Identify the first data row** (e.g., SNo "1", district "Kapurthala"). Note the x,y values of each data field.

4. **Determine new column boundaries** by observing gaps between column x-positions. Set each `xMin`/`xMax` to split mid-gap between adjacent columns.

5. **Update `COLUMNS`** in `parser.ts` with the new values.

6. **Test with `pnpm pipeline:dry-run`** — verify count matches expected total and records look correct.

### Row Classification Tuning

If the parser skips rows that contain valid data:

- **`districtNames`** array (parser.ts): add any new district names that appear (e.g., if a district is renamed).
- **`hasDistrict(row)`**: adjust the x-range if district column position changed.
- **Row y-tolerance** (currently 4px in `groupByRows`): increase if rows are spaced further apart.
- **`hasRera(row)`**: update the regex if the RERA number format changes.
- **`isDistrictTotal(row)`**: update the pattern if subtotal row format changes.

### RERA Number Reconstruction

RERA numbers may split across two rows (e.g., `"PBRERA-KPT40-"` at higher y, `"PR1293"` at lower y). The `reraAccumulator` global handles this:

- When a row has a RERA fragment ending with `-`, it's stored as a prefix.
- The next row's RERA field is prepended with the stored prefix.
- If the format changes (no longer uses hyphen-split fragments), modify `reraAccumulator` logic accordingly.

## GMADA HTML/PDF Scraper (future)

The GMADA approach uses a different strategy (Drupal pages + master-plan PDFs). When implemented, this section should document:

1. CSS selectors for Drupal page elements
2. URL structure patterns
3. PDF parsing approach for master-plan documents
4. Expected data formats

## General Drift Monitoring

| Check | Frequency | Action |
|---|---|---|
| Dry-run record count vs expected | Weekly | Investigate if >10% drop |
| First-of-month full scrape audit | Monthly | Manually inspect 10 records from output |
| Portal URL accessibility | Before each run | Update URL if portal redesigned |
| reCAPTCHA/CAPTCHA presence | Quarterly | Switch to fallback approach if added |
| robots.txt re-check | Semi-annual | Re-run ToS review if portal changes |

## Automation

When drift is detected:

1. **Pause the cron** (disable the GitHub Action) to avoid producing bad data
2. **Run the diagnostic steps** above to identify the change
3. **Update the parser** and test with dry-run
4. **Run a full scrape+promote** manually
5. **Re-enable the cron** once the fix is verified in production
