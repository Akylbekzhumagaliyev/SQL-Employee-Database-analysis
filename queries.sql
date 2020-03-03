--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no,last_name,first_name,gender,s.salary
FROM employees AS e
RIGHT JOIN salaries AS s ON
e.emp_no=s.emp_no
LIMIT 10

--2. List employees who were hired in 1986.
SELECT * FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31'
LIMIT 10

--3.List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no,ds.dept_name,dm.emp_no,e.last_name,e.first_name,dm.from_date,dm.to_date
FROM dept_manager AS dm
RIGHT JOIN departments AS ds ON
dm.dept_no=ds.dept_no
INNER JOIN employees AS e ON
dm.emp_no=e.emp_no

SELECT * FROM dept_emp
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no,e.last_name,e.first_name,ds.dept_no,ds.dept_name
FROM emploees AS e
INNER JOIN departments AS ds ON
de.dept_no=ds.dept_no
INNER JOIN employees AS e ON
dm.emp_no=e.emp_no