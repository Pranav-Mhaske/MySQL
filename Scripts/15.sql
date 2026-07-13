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

--9. Display: dept_name & total_employees :- Show the number of employees in each department. & Include departments that have no employees.

SELECT d.dept_name,
COUNT(e.emp_id) AS total_employees
FROM Department AS d
LEFT JOIN Employee AS e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

--10. Display: dept_name & total_salary :- Show the total salary paid by each department.

SELECT d.dept_name,
       COALESCE(SUM(e.salary), 0) AS total_salary
FROM Department AS d
LEFT JOIN Employee AS e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

--11. Display: dept_name & total_employees :- Show only the departments that have 2 or more employees.

SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees
FROM Department AS d
INNER JOIN Employee AS e
ON e.dept_id = d.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.emp_id) >= 2;

--12. Display: dept_name & lowest_salary :- Find the lowest salary in each department.

SELECT d.dept_name,
       MIN(e.salary) AS lowest_salary
FROM Department AS d
LEFT JOIN Employee AS e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

--13. Display: dept_name & average_salary :- Requirements: Calculate the average salary for each department. && Show only departments that have at least 2 employees. && Sort the result by average salary in descending order.

SELECT d.dept_name,
       AVG(e.salary) AS average_salary
FROM Department AS d
INNER JOIN Employee AS e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.dept_id) >= 2
ORDER BY AVG(e.salary) DESC;

--14. Display emp_name, dept_name, city :- You'll need to join all three tables.

SELECT e.emp_name, d.dept_name, l.city
FROM Employee AS e
INNER JOIN Department AS d
ON e.dept_id = d.dept_id
INNER JOIN Location AS l
ON l.location_id = d.location_id;

--15. Using the same three tables (Employee, Department, and Location), display:- city & total_employees, :- Requirements: Include all cities, even if they have no employees. Count the number of employees in each city. Show only cities with at least 1 employee. Sort the results by total_employees in descending order.

SELECT l.city,
       COUNT(e.emp_id) AS total_employees
FROM Location AS l
LEFT JOIN Department AS d
ON l.location_id = d.location_id
LEFT JOIN Employee AS e
ON d.dept_id = e.dept_id
GROUP BY l.location_id, l.city
HAVING COUNT(e.emp_id) >= 1
ORDER BY total_employees DESC;