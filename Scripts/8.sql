-- WINDOW FUNCTIONS
-- 1)
SELECT
	*,
    SUM(unit_price) OVER(ORDER BY launch_date)
FROM 
	dim_product;