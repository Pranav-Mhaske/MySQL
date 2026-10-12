--1

SELECT
    DEPARTMENT,
    AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 65000;

--2

SELECT
    DEPARTMENT,
    AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING ((AVG(SALARY) > 65000) AND (AVG(SALARY) < 80000));


--3

SELECT 
    COUNT(CASE WHEN marks >= 90 THEN 1 END) AS students_90_plus,
    COUNT(CASE WHEN marks < 90 THEN 1 END) AS students_90_minus
FROM students;


--4

SELECT MAX(salary) AS second_highest_salary 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);

--5

SELECT 
    ROUND(100.0 * COUNT(CASE WHEN score IN (4, 5) THEN 1 END) / COUNT(*), 2) AS pct_high_4_5,
    ROUND(100.0 * COUNT(CASE WHEN score IN (1, 2) THEN 1 END) / COUNT(*), 2) AS pct_low_1_2,
    ROUND(100.0 * COUNT(CASE WHEN score = 3 THEN 1 END) / COUNT(*), 2) AS pct_mid_3
FROM students;

--6

WITH regional_sales AS (
    SELECT region, product, SUM(amount) AS total_sales
    FROM orders
    WHERE order_date >= '2026-01-01' 
      AND status = 'COMPLETED'
    GROUP BY region, product
)
SELECT region, product, total_sales
FROM regional_sales
WHERE total_sales > 10000
  AND region = 'North America';
