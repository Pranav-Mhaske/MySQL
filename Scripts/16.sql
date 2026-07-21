SELECT MAX(salary) AS SecondHighestSalary 
FROM Employee 
WHERE salary < (SELECT MAX(salary) FROM Employee);


SELECT
    product_id,
    sale_date,
    amount,
    SUM(amount) OVER (
        PARTITION BY product_id
        ORDER BY sale_date
    ) AS running_total
FROM Sales;


SELECT column_1, column_2, column_3, function()
OVER (PARTITION BY partition_expression ORDER BY order_expression) as output_column_name
FROM table_name

SELECT 
	* 
FROM 
	dim_product
WHERE 
	unit_price > (SELECT AVG(unit_price) FROM dim_product);
    

SELECT DISTINCT salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;


SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY unit_price) AS row_number
    FROM dim_product
) AS subquery
WHERE row_number > 100;