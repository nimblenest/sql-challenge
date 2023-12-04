Create table departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

Create Table salaries (
	emp_no Int Primary Key,
	salary INT
);

Create table dept_emp (
	emp_no INT,
	Foreign Key (emp_no) References salaries(emp_no),
	dept_no Varchar,
	Foreign Key (dept_no) References departments(dept_no)
);

Create table dept_manager (
	dept_no VARCHAR,
	Foreign Key (dept_no) References departments(dept_no),
	emp_no INT,
	Foreign Key (emp_no) References salaries(emp_no)
);

Create table titles (
	title_id VARCHAR Primary Key,
	title VarChar
);

Create Table employees (
	emp_no Int,
	Foreign Key (emp_no) References salaries(emp_no),
	emp_title_id Varchar,
	Foreign Key (emp_title_id) References titles(title_id),
	birth_date Date,
	first_name Varchar,
	Last_name Varchar,
	sex Varchar(1),
	hire_date date
);

Select * From departments;
Select * From salaries;
Select * From dept_emp;
Select * From dept_manager;
Select * From titles;
Select * From employees;
