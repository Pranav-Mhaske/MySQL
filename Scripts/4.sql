-- INNER JOIN
SELECT 
	*
FROM 
	orders o 
INNER JOIN 
	customers c 
    ON 
		o.cust_id = c.id;

-- Inner join will return only the records that have matching values in both tables. If there is no match, the record will not be included in the result set.

-- LEFT JOIN
SELECT 
	*
FROM 
	orders o 
LEFT JOIN 
	customers c 
    ON 
		o.cust_id = c.id;

--Left join will return all records from the left table (orders) and the matched records from the right table (customers). If there is no match, the result is NULL on the right side.

-- RIGHT JOIN
SELECT 
	*
FROM 
	orders o 
RIGHT JOIN 
	customers c 
	ON 
		o.cust_id = c.id;

--Right join will return all records from the right table (customers) and the matched records from the left table (orders). If there is no match, the result is NULL on the left side.