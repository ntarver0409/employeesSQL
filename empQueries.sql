--1. Joining the employees and salaries table to get each employees name and salary
SELECT e.emp_num, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_num = s.emp_num;
--2. Finding the names of employees hired in 1986 using LIKE method
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%/%/86';
--3. Joining the departments, employees, and dept_mangers table to get the names and info on each departments manager
SELECT d.dept_num, d.dept_name, dm.emp_num, e.last_name, e.first_name
FROM dept_managers AS dm
INNER JOIN departments AS d ON dm.dept_num = d.dept_num
INNER JOIN employees AS e ON dm.emp_num = e.emp_num;
--4. Joining the dept_emps. employees, and departments table to list department each employee works in
SELECT de.emp_num, e.last_name, e.first_name, d.dept_name
FROM dept_emps AS de
INNER JOIN employees AS e ON de.emp_num = e.emp_num
INNER JOIN departments AS d ON de.dept_num = d.dept_num;
--5. Finding employees with the first name Hercules and a last name starting with B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
--6. Listing all the employees in the sales department
SELECT de.emp_num, e.last_name, e.first_name, d.dept_name
FROM dept_emps AS de
INNER JOIN employees AS e ON de.emp_num = e.emp_num
INNER JOIN departments AS d ON de.dept_num = d.dept_num
WHERE d.dept_name = 'Sales';
--7. Listing all the employees in the sales or development departments
SELECT de.emp_num, e.last_name, e.first_name, d.dept_name
FROM dept_emps AS de
INNER JOIN employees AS e ON de.emp_num = e.emp_num
INNER JOIN departments AS d ON de.dept_num = d.dept_num
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';
--8. Using Order By to list the frequency of last names of employees
SELECT last_name, COUNT(last_name) AS name_frequency
FROM employees
GROUP BY last_name
ORDER BY name_frequency DESC;
