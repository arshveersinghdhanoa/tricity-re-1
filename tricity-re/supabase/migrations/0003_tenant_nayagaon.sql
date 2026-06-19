-- Nayagaon clone tenant (Milestone 5)
insert into tenants (slug, domain, name, tagline)
values (
  'nayagaon',
  'nayagaon.in',
  'Nayagaon Property Insight',
  'Trusted property data for the Nayagaon neighbourhood'
)
on conflict (slug) do nothing;
