-- Tutor 

--1. Display the employee name and salary of employees who earn more than 50,000.

SELECT emp_name, salary
FROM Employee
WHERE salary > 50000;

--2. Display the employee name, department, and salary of employees who:
-- work in the IT department, and earn at least 60,000.

SELECT emp_name, department, salary
FROM Employee
WHERE department = 'IT'
  AND salary >= 60000;

--3. Display the employee name, department, and salary of employees who earn 50,000 or more.
-- Sort the results: By salary in descending order. If two employees have the same salary, sort them by employee name in ascending order.

SELECT emp_name, department, salary
FROM Employee
WHERE salary >= 50000
ORDER BY salary DESC, emp_name ASC;

--4. Display: department, total_employees :- Count how many employees are in each department.

SELECT department, COUNT(emp_id) AS total_employees
FROM Employee
GROUP BY department;