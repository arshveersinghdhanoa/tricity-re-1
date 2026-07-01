-- Add area and area_unit columns to prices table for displaying total price + area
alter table prices
  add column if not exists area numeric,
  add column if not exists area_unit text;

-- Update staging_prices to also carry area and area_unit
alter table staging_prices
  add column if not exists area numeric,
  add column if not exists area_unit text;
