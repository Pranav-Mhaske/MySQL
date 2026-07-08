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

--5. Display: department, average_salary :- Show only the departments whose average salary is greater than 55,000.

SELECT department, AVG(salary) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 55000;

--6. Display: emp_name, dept_name, salary :- for all employees by joining the Employee and Department tables.

SELECT e.emp_name, d.dept_name, e.salary
FROM Employee AS e
INNER JOIN Department AS d
ON e.dept_id = d.dept_id;

--7. Display: emp_name, dept_name, salary :- Show only employees:- who belong to the IT department, and whose salary is greater than 60,000.

SELECT e.emp_name, d.dept_name, e.salary
FROM Employee AS e
INNER JOIN Department AS d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT'
  AND e.salary > 60000;

--8. Display: dept_name, emp_name :- Show all departments, even if they have no employees.

SELECT d.dept_name, e.emp_name
FROM Department AS d
LEFT JOIN Employee AS e
ON d.dept_id = e.dept_id;