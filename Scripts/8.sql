-- WINDOW FUNCTIONS
-- 1)
SELECT
	*,
    SUM(unit_price) OVER(ORDER BY launch_date)
FROM 
	dim_product;

-- 2) FRAMES
SELECT 
	*,
    SUM(unit_price) OVER(ORDER BY launch_date ROWS BETWEEN unbounded preceding AND current row)
FROM 
	dim_product;

SELECT 
	*,
    SUM(unit_price) OVER(ORDER BY launch_date ROWS BETWEEN unbounded preceding AND unbounded following)
FROM 
	dim_product;

-- unbounded preceding means all the previous values till my current row
-- unbounded following means all the next values from my current row
