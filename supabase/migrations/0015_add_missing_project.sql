-- Add missing SAS Nagar project PBRERA-SAS81-PC0427 (Town Square)
-- From PDF parser: not in Excel, never promoted

INSERT INTO projects (id, tenant_id, slug, name, rera_number, status, description, metadata, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  '694f23b1-061e-4fd8-ad44-c14771690902',
  'town-square-sas81-pc0427',
  'Town Square',
  'PBRERA-SAS81-PC0427',
  'active',
  'Commercial (Plotted) project by Hardip Singh Sandhu in SAS Nagar.',
  '{"district":"SAS Nagar","promoter":"Hardip Singh Sandhu","type":"Commercial (Plotted)","location":"Sante Majra, Kharar Landran Road, MC Kharar, SAS Nagar, Punjab-140307","address":"House No. 1110, Sector 70, SAS Nagar, Punjab-160071","contact":"Mobile no. 9915073001, Email Id: townsquaremohali@gmail.com"}',
  NOW(),
  NOW()
);

SELECT COUNT(*) AS total_projects FROM projects;
