DROP TABLE departments;
DROP TABLE dept_emps;
DROP TABLE dept_managers;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;


CREATE TABLE departments (
	dept_num VARCHAR,
	dept_name VARCHAR
);

CREATE TABLE dept_emps (
	emp_num INT,
	dept_num VARCHAR
);

CREATE TABLE dept_managers (
	dept_num VARCHAR,
	emp_num INT
);

CREATE TABLE employees (
	emp_num INT,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE salaries (
	emp_num INT,
	salary INT
);

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

SELECT * FROM employees;
