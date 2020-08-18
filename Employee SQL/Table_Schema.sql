-- Drop table if needed
DROP TABLE titles

-- Create employee table
CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR(10), 
	birth_date DATE, 
	first_name VARCHAR(30), 
	last_name VARCHAR(30), 
	sex CHAR(1), 
	hire_date DATE, 
	CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

-- Create salaries table
CREATE TABLE salaries(
	emp_no INT,
	salaries INT, 
	CONSTRAINT fk_salary_id PRIMARY KEY (emp_no)
); 

-- Create salaries table
CREATE TABLE dept_employee (
	emp_no INT,
	dept_no CHAR(4)
); 

-- Create titles table
CREATE TABLE titles (
	title_id CHAR(5), 
	title VARCHAR(20)
);

-- Create departments table
CREATE TABLE departments (
	dept_no CHAR(4), 
	dept_name VARCHAR(25)
);

-- Create dept_manager table
CREATE TABLE dept_manager (
	dept_no CHAR(4), 
	emp_no INT 
);

SELECT * FROM employees
