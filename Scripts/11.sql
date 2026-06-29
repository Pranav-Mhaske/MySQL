-- REAL TIME SCENARIOS

-- SCENARIO 1 [Finding the nth value (n = 5)]
SELECT 
	subquery.* 
FROM 
(
SELECT 
	*,
    DENSE_RANK() OVER(PARTITION BY category ORDER BY unit_price DESC) AS ranking
FROM 
	dim_product
) subquery
WHERE 
	ranking = 5;