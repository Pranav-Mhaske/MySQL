-- CTEs [Common Table Expressions]

WITH cte_table AS
(
SELECT 
	* 
FROM 
	dim_product
WHERE 
	unit_price > (SELECT AVG(unit_price) FROM dim_product)
),
cte_table_2 AS
(
SELECT * FROM cte_table
WHERE 
	product_name IN ('Figure Method','Huge Change', 'Film Finally') 
)
SELECT * FROM cte_table_2
WHERE product_name = 'Figure Method'


--2
WITH TotalSales AS (
    SELECT salesperson_id, SUM(amount) AS total_revenue
    FROM sales
    GROUP BY salesperson_id
),
TopPerformers AS (
    SELECT salesperson_id
    FROM TotalSales
    WHERE total_revenue > 100000
)
SELECT emp.employee_name
FROM employees emp
JOIN TopPerformers tp ON emp.id = tp.salesperson_id;