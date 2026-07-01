-- FAKE DEMO DATA — DO NOT RUN AGAINST PRODUCTION
-- Sample rows for local development and pipeline testing only.

-- Requires tenant row; run after 0001_init.sql on a LOCAL database only.

insert into tenants (slug, domain, name, tagline)
values (
  'newchandigarh',
  'localhost',
  'New Chandigarh Property Intelligence',
  'Verified property data for the New Chandigarh micro-market'
)
on conflict (slug) do nothing;

-- FAKE project — clearly marked for dev only
insert into projects (tenant_id, rera_number, name, slug, status, description)
select
  t.id,
  'FAKE-RERA-000001',
  '[DEMO] Sample Project — Not Real',
  'demo-sample-project',
  'active',
  'FAKE demo record. Must never appear in production.'
from tenants t
where t.slug = 'newchandigarh'
on conflict (tenant_id, rera_number) do nothing;

insert into prices (project_id, price_type, amount, verified, source)
select
  p.id,
  'asking',
  4500,
  false,
  null
from projects p
join tenants t on t.id = p.tenant_id
where t.slug = 'newchandigarh' and p.rera_number = 'FAKE-RERA-000001'
on conflict do nothing;
