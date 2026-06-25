-- 0005_cleanup_fake_projects.sql
-- P0-1: Remove fabricated GMADA projects and enforce PSRERA format
-- Applied to production on 2026-06-25 via Supabase SQL editor

-- 1. Delete any rows whose rera_number does not match the required pattern
DELETE FROM projects
WHERE rera_number !~ '^PBRERA-';

-- 2. Add a CHECK constraint to reject future invalid inserts
ALTER TABLE projects
  ADD CONSTRAINT rera_number_format
  CHECK (rera_number ~ '^PBRERA-');
