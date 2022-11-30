--List the employee number, last name, first name, sex, and salary of each employee.

	--CREATE VIEW employee_salaries AS 
	
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM Employees as e
INNER JOIN Salaries as s 
on e.emp_no=s.emp_no;

	--SELECT * FROM employee_salaries

--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM Employees 
WHERE hire_date LIKE '%1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dep.dept_no, dep.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Departments as dep
JOIN Dept_manager as dm
ON dep.dept_no = dm.dept_no
JOIN Employees as e
ON e.emp_no = dm.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dep.dept_name 
FROM Departments as dep
JOIN Dept_emp as de
ON dep.dept_no = de.dept_no
JOIN Employees as e
ON e.emp_no = de.emp_no;

--List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT last_name, first_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name
FROM Departments as dep
JOIN Dept_emp as de
ON dep.dept_no = de.dept_no
JOIN Employees as e
ON e.emp_no = de.emp_no
WHERE dep.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, dep.dept_name
FROM Departments as dep
JOIN Dept_emp as de
ON dep.dept_no = de.dept_no
JOIN Employees as e
ON e.emp_no = de.emp_no
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).