-- 0007_cleanup_fake_staging_prices.sql
-- Remove template/example staging_prices that reference fake RERA numbers

DELETE FROM staging_prices
WHERE rera_number = 'PBRERA-SAS06-PR0123';
