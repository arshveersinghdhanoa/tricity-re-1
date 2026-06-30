-- Ajitgarh clone tenant (Milestone 5)
insert into tenants (slug, domain, name, tagline)
values (
  'ajitgarh',
  'ajitgarh.in',
  'Ajitgarh Real Estate',
  'Data-driven insights for Ajitgarh and surrounding sectors'
)
on conflict (slug) do nothing;
