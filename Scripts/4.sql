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