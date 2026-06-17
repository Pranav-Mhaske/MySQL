-- CONDITIONALS
-- 1)
SELECT 
	*,
    CASE 
    WHEN unit_price <= 100 THEN 'affordable'
    WHEN unit_price <= 200 THEN 'normal'
    ELSE 'expensive (but not for you!)' 
    END AS price_category
FROM 
	dim_product;