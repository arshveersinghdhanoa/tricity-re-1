-- Tricity RE Platform — initial schema
-- Migration: 0001_init.sql
-- Apply via Supabase SQL editor or: supabase db push

create extension if not exists "pgcrypto";

-- ---------------------------------------------------------------------------
-- Tenants
-- ---------------------------------------------------------------------------
create table if not exists tenants (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  domain text not null unique,
  name text not null,
  tagline text,
  config jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

-- ---------------------------------------------------------------------------
-- Production entities
-- ---------------------------------------------------------------------------
create table if not exists builders (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references tenants(id) on delete cascade,
  name text not null,
  slug text not null,
  created_at timestamptz not null default now(),
  unique (tenant_id, slug)
);

create table if not exists localities (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references tenants(id) on delete cascade,
  name text not null,
  slug text not null,
  description text,
  created_at timestamptz not null default now(),
  unique (tenant_id, slug)
);

create table if not exists projects (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references tenants(id) on delete cascade,
  builder_id uuid references builders(id) on delete set null,
  locality_id uuid references localities(id) on delete set null,
  rera_number text not null,
  name text not null,
  slug text not null,
  status text not null default 'active',
  description text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (tenant_id, rera_number),
  unique (tenant_id, slug)
);

create table if not exists prices (
  id uuid primary key default gen_random_uuid(),
  project_id uuid not null references projects(id) on delete cascade,
  price_type text not null check (price_type in ('asking', 'transacted')),
  amount numeric not null check (amount > 0),
  currency text not null default 'INR',
  unit text not null default 'sqft',
  verified boolean not null default false,
  source text,
  recorded_at timestamptz,
  created_at timestamptz not null default now(),
  constraint verified_requires_source check (
    verified = false or (verified = true and source is not null)
  )
);

create table if not exists guides (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references tenants(id) on delete cascade,
  slug text not null,
  title text not null,
  summary text,
  content text,
  is_placeholder boolean not null default true,
  created_at timestamptz not null default now(),
  unique (tenant_id, slug)
);

create table if not exists leads (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references tenants(id) on delete cascade,
  name text,
  phone text not null,
  email text,
  message text,
  project_slug text,
  score integer not null default 0,
  is_hot boolean not null default false,
  context jsonb not null default '{}'::jsonb,
  source_page text,
  created_at timestamptz not null default now()
);

-- ---------------------------------------------------------------------------
-- Staging (scrapers write here only — Non-negotiable #4)
-- ---------------------------------------------------------------------------
create table if not exists staging_projects (
  id uuid primary key default gen_random_uuid(),
  tenant_id uuid not null references tenants(id) on delete cascade,
  rera_number text not null,
  raw_payload jsonb not null,
  parsed_name text,
  parsed_status text,
  validation_status text not null default 'pending'
    check (validation_status in ('pending', 'valid', 'invalid')),
  validation_errors jsonb,
  source_portal text not null,
  scraped_at timestamptz not null default now(),
  promoted_at timestamptz,
  created_at timestamptz not null default now()
);

create table if not exists staging_prices (
  id uuid primary key default gen_random_uuid(),
  staging_project_id uuid references staging_projects(id) on delete cascade,
  tenant_id uuid not null references tenants(id) on delete cascade,
  rera_number text,
  price_type text not null check (price_type in ('asking', 'transacted')),
  amount numeric not null,
  verified boolean not null default false,
  source text,
  raw_payload jsonb not null,
  validation_status text not null default 'pending'
    check (validation_status in ('pending', 'valid', 'invalid')),
  validation_errors jsonb,
  source_portal text not null,
  scraped_at timestamptz not null default now(),
  promoted_at timestamptz,
  created_at timestamptz not null default now()
);

-- ---------------------------------------------------------------------------
-- Audit / promotion
-- ---------------------------------------------------------------------------
create table if not exists promotion_log (
  id uuid primary key default gen_random_uuid(),
  entity_type text not null,
  staging_id uuid not null,
  production_id uuid,
  action text not null,
  details jsonb,
  created_at timestamptz not null default now()
);

create table if not exists status_transitions (
  id uuid primary key default gen_random_uuid(),
  project_id uuid not null references projects(id) on delete cascade,
  from_status text,
  to_status text not null,
  source text,
  created_at timestamptz not null default now()
);

-- ---------------------------------------------------------------------------
-- Indexes
-- ---------------------------------------------------------------------------
create index if not exists idx_projects_tenant on projects (tenant_id);
create index if not exists idx_projects_rera on projects (tenant_id, rera_number);
create index if not exists idx_prices_project on prices (project_id);
create index if not exists idx_leads_tenant on leads (tenant_id);
create index if not exists idx_staging_projects_status on staging_projects (validation_status);
create index if not exists idx_staging_prices_status on staging_prices (validation_status);

-- ---------------------------------------------------------------------------
-- Row Level Security (service role used by pipeline; anon read-only on public)
-- ---------------------------------------------------------------------------
alter table tenants enable row level security;
alter table builders enable row level security;
alter table localities enable row level security;
alter table projects enable row level security;
alter table prices enable row level security;
alter table guides enable row level security;
alter table leads enable row level security;
alter table staging_projects enable row level security;
alter table staging_prices enable row level security;

create policy "Public read tenants" on tenants for select using (true);
create policy "Public read builders" on builders for select using (true);
create policy "Public read localities" on localities for select using (true);
create policy "Public read projects" on projects for select using (true);
create policy "Public read prices" on prices for select using (true);
create policy "Public read guides" on guides for select using (true);

-- Staging tables: no public access (pipeline uses service role)
create policy "No public staging projects" on staging_projects for select using (false);
create policy "No public staging prices" on staging_prices for select using (false);

-- Leads: insert via service role / API only
create policy "No public leads read" on leads for select using (false);
