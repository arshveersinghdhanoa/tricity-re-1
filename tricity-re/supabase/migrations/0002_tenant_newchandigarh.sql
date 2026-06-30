-- Production tenant registry (site config — not sample property data)
insert into tenants (slug, domain, name, tagline)
values (
  'newchandigarh',
  'newchandigarh.in',
  'New Chandigarh Property Intelligence',
  'Verified property data for the New Chandigarh micro-market'
)
on conflict (slug) do nothing;
