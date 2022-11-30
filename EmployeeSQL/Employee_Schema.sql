-- Create a new table for Departments

CREATE TABLE Departments (
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR(20)
);

-- Create a new table for Titles

CREATE TABLE Titles (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR(20)
);

-- Create a new table for Employees

CREATE TABLE Employees (
	emp_no INT PRIMARY KEY NOT NULL, 
	emp_title_id VARCHAR(5),
	birth_date VARCHAR(10),
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex CHAR,
	hire_date VARCHAR(10),
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);


-- Create a new table for Dept_emp

CREATE TABLE Dept_emp (
	emp_no INT,
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create a new table for Dept_manager

CREATE TABLE Dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create a new table for Salaries

CREATE TABLE Salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


