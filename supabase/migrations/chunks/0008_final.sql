-- Final verification
SELECT COUNT(*) as total_projects FROM projects WHERE tenant_id = (SELECT id FROM tenants WHERE slug = 'newchandigarh');

SELECT (metadata->>'district') as district, COUNT(*) as count
FROM projects WHERE tenant_id = (SELECT id FROM tenants WHERE slug = 'newchandigarh')
GROUP BY 1 ORDER BY 2 DESC;
