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