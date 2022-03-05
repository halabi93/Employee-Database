SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries 
ON employees.emp_no=salaries.emp_no;


SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';


SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_manager
ON employees.emp_no=dept_manager.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no;


SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (departments.dept_no = dept_emp.dept_no);


SELECT employees.first_name, employees.last_name, employees.sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';


SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name = 'Sales';


SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


SELECT last_name, 
COUNT(last_name) AS "count_lastName"
FROM employees
GROUP BY last_name
ORDER BY "count_lastName" DESC;