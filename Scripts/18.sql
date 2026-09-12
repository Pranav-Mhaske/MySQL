-- 1 (175. Combine Two Tables)

SELECT P.FIRSTNAME, P.LASTNAME, A.CITY, A.STATE FROM PERSON AS P LEFT JOIN ADDRESS AS A ON P.PERSONID = A.PERSONID

--2 (181. Employees Earning More Than Their Managers)

SELECT 
NAME AS EMPLOYEE 
FROM EMPLOYEE AS T3 
LEFT JOIN 
(SELECT 
T1.MANAGERID AS MID, T2.SALARY AS MSALARY 
FROM EMPLOYEE AS T1 
LEFT JOIN 
EMPLOYEE AS T2 
ON T1.MANAGERID = T2.ID
) AS T4 
ON T3.MANAGERID = T4.MID  
WHERE T3.SALARY > T4.MSALARY

--&

SELECT T1.NAME AS EMPLOYEE FROM EMPLOYEE AS T1 LEFT JOIN EMPLOYEE AS T2 ON T1.MANAGERID = T2.ID WHERE T1.SALARY > T2.SALARY


--3 (182. Duplicate Emails)

SELECT DISTINCT(T1.EMAIL) AS Email FROM PERSON AS T1 LEFT JOIN (
     SELECT EMAIL, COUNT(EMAIL) AS E FROM PERSON GROUP BY EMAIL
) AS T2 ON T1.EMAIL = T2.EMAIL  WHERE T2.E > 1
 
 --& 

SELECT EMAIL
FROM PERSON
GROUP BY EMAIL
HAVING COUNT(*) > 1;


--4 (183. Customers Who Never Order)

SELECT T1.NAME AS CUSTOMERS FROM CUSTOMERS AS T1 
LEFT JOIN ORDERS AS T2 
ON T1.ID = T2.CUSTOMERID 
WHERE T2.ID IS NULL


--X (PALLINDROME)

SELECT * 
FROM your_table 
WHERE LOWER(column_name) = REVERSE(LOWER(column_name));

--X (Duplicate Emails)

SELECT Email, COUNT(Email)
FROM Users
GROUP BY Email
HAVING COUNT(Email) > 1;

--X

SELECT employee_name, department, salary 
FROM employees 
ORDER BY department ASC, salary DESC;

--x (Self join)

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

--x (Joins)

SELECT 
    t1.column_a, 
    t2.column_b, 
    t3.column_c, 
    t4.column_d, 
    t5.column_e, 
    t6.column_f, 
    t7.column_g
FROM table1 t1
INNER JOIN table2 t2 ON t1.id = t2.t1_id
INNER JOIN table3 t3 ON t2.id = t3.t2_id
LEFT JOIN table4 t4  ON t3.id = t4.t3_id
LEFT JOIN table5 t5  ON t4.id = t5.t4_id
RIGHT JOIN table6 t6 ON t5.id = t6.t5_id
FULL JOIN table7 t7  ON t6.id = t7.t6_id;

--x (Sub-query)
SELECT 
	* 
FROM 
(
	SELECT 
	* 
FROM 
	dim_product
WHERE 
	unit_price > (SELECT AVG(unit_price) FROM dim_product)
) AS subquery_table
WHERE 
	product_name = 'Figure Method'