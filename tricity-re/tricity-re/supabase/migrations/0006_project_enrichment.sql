-- Project enrichment: property type + sourced metadata (PDF + Client-verified details)
alter table projects
  add column if not exists property_type text,
  add column if not exists metadata jsonb not null default '{}'::jsonb;

-- CAPTCHA-gated detail fields enter via staging only (Non-negotiable #4)
create table if not exists staging_project_details (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references tenants(id) on delete cascade,
  rera_number text not null,
  source_reference text not null,
  detail jsonb not null,
  validation_status text not null default 'pending'
    check (validation_status in ('pending', 'valid', 'invalid')),
  validation_errors jsonb,
  promoted_at timestamptz,
  created_at timestamptz not null default now()
);

create index if not exists idx_staging_project_details_status
  on staging_project_details (validation_status);

alter table staging_project_details enable row level security;
create policy "No public staging project details" on staging_project_details for select using (false);
