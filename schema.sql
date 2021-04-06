-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

-- Creating tables for PH-EmployeeDB
CREATE TABLE employees (
     emp_no int NOT NULL,
     birth_date date NOT NULL,
	 first_name varchar not null,
	 last_name varchar NOT NULL,
	 gender varchar not null,
	 hire_date date not null,
     PRIMARY KEY (emp_no)
);

-- Creating tables for PH-EmployeeDB
CREATE TABLE managers (
     dept_no varchar(4) NOT NULL,
     emp_no int NOT NULL,
	 from_date date not null,
	 to_date date NOT NULL,
Foreign key (emp_no) References employees (emp_no),
Foreign key (dept_no) References departments (dept_no),
     PRIMARY KEY (emp_no, dept_no)
);

-- Creating tables for PH-EmployeeDB
CREATE TABLE salaries (
     emp_no int NOT NULL,
	 salary int not null, 
	 from_date date not null,
	 to_date date NOT NULL,
Foreign key (emp_no) References employees (emp_no),
     PRIMARY KEY (emp_no)
);

Select * From departments ;
