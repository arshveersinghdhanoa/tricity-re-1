# FAKE DEMO DATA — DO NOT USE IN PRODUCTION

This directory contains **sample data for local development only**.

Per the Tricity RE handoff brief (Non-negotiable #2):

> Demo/sample data is clearly marked fake and must **never** reach production.

To load demo data locally (never in production Supabase):

```bash
psql $DATABASE_URL -f data/demo/seed-demo.sql
```

Production databases must contain **only** genuinely sourced/verified records promoted via the staging → validation → promotion pipeline.
