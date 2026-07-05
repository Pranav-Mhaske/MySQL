-- Tutor 

--1

SELECT emp_name, salary
FROM Employee
WHERE salary > 60000;

--2

SELECT emp_name, department, salary
FROM Employee
WHERE department = 'IT'
  AND salary > 59999;

--3
SELECT emp_name, department, salary
FROM Employee
WHERE salary >= 55000
ORDER BY salary DESC;