

-- #1.  List for each employee:  employee number, last name, first name, sex, and salary
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salaries
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- #2.  List first name, last name, and hire date for employees who were hired in 1986
SELECT employees.first_name, 
	employees.last_name, 
	employees.hire_date 
FROM employees
WHERE (hire_date >= '1986-01-01') AND (hire_date <= '1986-12-31')

-- #3.  List the manager of each department with the following:  department number, department name, manager's emp no, last name, first name
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	dept_manager.dept_no,
	departments.dept_name
FROM employees
INNER JOIN dept_manager ON 
	employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON 
	dept_manager.dept_no = departments.dept_no; 

-- #4. List the department of each employee with the following:  employee number, last name, first name, department name  
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM employees
INNER JOIN dept_employee ON 
	employees.emp_no = dept_employee.emp_no
INNER JOIN departments ON 
	dept_employee.dept_no = departments.dept_no; 
	
-- #5.  List first name, last name, and sex for employees whose first name is Hercules and last names begin with a "B"
SELECT employees.first_name, 
	employees.last_name, 
	employees.sex
FROM employees
WHERE (first_name = 'Hercules') AND (last_name LIKE 'B%');

-- #6. List all employees in the Sales department, including emp_no, last name, first name, and department name
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM employees
INNER JOIN dept_employee ON 
	employees.emp_no = dept_employee.emp_no
INNER JOIN departments ON 
	dept_employee.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- #7.  List all employees in the Sales and Development epartments, including emp_no, last name, first name, and department name
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM employees
INNER JOIN dept_employee ON 
	employees.emp_no = dept_employee.emp_no
INNER JOIN departments ON 
	dept_employee.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- #8.  In descending order, list the frequency count of employees last names (how many employees share each last name)
SELECT last_name, count(*)
FROM employees
GROUP BY last_name
ORDER BY count DESC;



