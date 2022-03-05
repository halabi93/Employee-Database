DROP TABLE if EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,  
	dept_name VARCHAR(30) NOT NULL
);

DROP TABLE if EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY, 
	title VARCHAR(30) NOT NULL
);

DROP TABLE if EXISTS employees;

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

DROP TABLE if EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(30),  
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE if EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(30), 
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE if EXISTS salaries;

CREATE TABLE salaries (
	emp_no INTEGER, 
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

