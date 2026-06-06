- FIRST SELECT 
SELECT * FROM dim_customer;


-- LIMIT 
SELECT 
	customer_id,
	email 
FROM 
	dim_customer
LIMIT 15;


-- WHERE [CONDITION]
-- 1
SELECT 
	* 
FROM 
	dim_customer 
WHERE 
	gender = 'F';

-- 2 (AND/OR)
SELECT 
	* 
FROM 
	dim_customer 
WHERE 
	(gender = 'F') AND ((country = 'France') OR (join_date > '2022-01-01'));

-- LIKE
-- 1)
SELECT 
	* 
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T%';
-- 2)
SELECT 
	* 
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T__f%y';

-- Sorting
SELECT 
	* 
FROM 
	dim_product
ORDER BY 
	unit_price DESC 
LIMIT 3;




