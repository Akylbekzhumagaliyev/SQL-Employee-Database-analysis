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

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
CREATE VIEW emp_with_dep AS
SELECT e.emp_no,e.last_name,e.first_name,ds.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
de.emp_no=e.emp_no
INNER JOIN departments AS ds ON
de.dept_no=ds.dept_no
ORDER BY e.emp_no

--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT * FROM emp_with_dep
WHERE dept_name='Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM emp_with_dep
WHERE dept_name='Sales' OR dept_name='Development'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "frequency_count" 
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC