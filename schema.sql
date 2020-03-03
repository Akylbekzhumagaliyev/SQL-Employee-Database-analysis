CREATE TABLE employees (
	emp_no INT PRIMARY KEY ,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(30),
	hire_date DATE
);
CREATE TABLE titles (
	emp_no INT REFERENCES employees(emp_no),
	title VARCHAR(30) NOT NULL,
	from_date DATE,
	to_date DATE
);
CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no),
	salary INT NOT NULL,
	from_date DATE,
	to_date DATE
);
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL 
);
CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no),
	dept_no VARCHAR(30) REFERENCES departments(dept_no),
	from_date DATE,
	to_date DATE
);
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) REFERENCES departments(dept_no),
	emp_no INT REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE
);