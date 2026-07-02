-- 0016_re_clean_non_sas_projects.sql
-- The daily workflow scrape re-introduced all Punjab projects.
-- Remove everything except SAS Nagar (SAS79/80/81) prefix projects.
BEGIN;

DELETE FROM prices WHERE project_id IN (
  SELECT id FROM projects WHERE rera_number NOT LIKE 'PBRERA-SAS%'
);

DELETE FROM status_transitions WHERE project_id IN (
  SELECT id FROM projects WHERE rera_number NOT LIKE 'PBRERA-SAS%'
);

DELETE FROM promotion_log WHERE entity_type = 'project' AND production_id IN (
  SELECT id FROM projects WHERE rera_number NOT LIKE 'PBRERA-SAS%'
);

DELETE FROM projects WHERE rera_number NOT LIKE 'PBRERA-SAS%';

DELETE FROM staging_projects WHERE rera_number NOT LIKE 'PBRERA-SAS%';

COMMIT;
