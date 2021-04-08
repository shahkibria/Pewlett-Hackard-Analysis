-- Get the list of people between the years 1952 and 1955
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Get the list of people in the years 1952 and 1955 and hire date between 1985 to 1988
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
;

-- Get the number of people in the years 1952 and 1955 and hire date between 1985 to 1988
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
;

-- Create a table of people in the years 1952 and 1955 and hire date between 1985 to 1988
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
;

DROP Table retirement_info

-- Recreate table above with emp_no
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
;

-- Joining departments and managers table

SELECT
departments.dept_name,
managers.emp_no,
managers.from_date,
managers.to_date
FROM departments
INNER JOIN managers
ON departments.dept_no = managers.dept_no
;

-- Joining retirement_info and deptemp table and use ri and de as nickmames 
SELECT 
ri.emp_no,
ri.first_name,
ri.last_name,
de.to_date
FROM retirement_info as ri
LEFT JOIN deptemp as de
ON ri.emp_no = de.emp_no
;

-- Joining retirement_info and deptemp table and use ri and de as nickmames 
-- and create a new table current_emp and we only include current employees
-- by filtering for '9999-01-01'
SELECT 
ri.emp_no,
ri.first_name,
ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN deptemp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = '9999-01-01'
;

-- Joining curent_emp and deptemp table and use ce and de as nickmames.
-- Order the list by order no.
SELECT 
COUNT(ce.emp_no),
de.dept_no
FROM current_emp as ce
LEFT JOIN deptemp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER by de.dept_no
;

-- List: 1 = Join three tables: the employees table with salaries table deptemp table
SELECT 
e.emp_no, 
e.first_name, 
e.last_name,
e.gender,
s.salary,
de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no
INNER JOIN deptemp as de
ON e.emp_no = de.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND e.hire_date BETWEEN '1985-01-01' AND '1988-12-31'
AND de.to_date = '9999-01-01'
;

-- List: 2 = Join three tables: the employees table with salaries table deptemp table
SELECT 
dm.dept_no,
d.dept_name,
dm.emp_no,
ce.last_name,
ce.first_name,
dm.from_date,
dm.to_date
INTO manager_info
FROM managers as dm
INNER JOIN departments as d
ON dm.dept_no = d.dept_no
INNER JOIN current_emp as ce
ON dm.emp_no = ce.emp_no
;

SELECT 
e.emp_no,
e.first_name,
e.last_name,
e.gender,
s.salary,
de.to_date
INTO dept_info
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no
INNER JOIN deptemp as de
ON e.emp_no = de.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND e.hire_date BETWEEN '1985-01-01' AND '1988-12-31'
AND de.to_date = '9999-01-01'
;


