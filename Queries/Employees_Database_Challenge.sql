-- Module 7 Deliverable 1

-- Retrieve emp_no, First_name, last_name from employees table
-- Retrieve titlr, from_date, to_date from titles table
-- Join the two tables using the primary key, filter data by birth_date range given and order by emp_no
-- Enter the data into a new table using the INTO function
SELECT
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC
;

--Retrieve the employee number, first and last name, and title columns from the Retirement Titles table
-- Use Dictinct ON employee number with Orderby on most recent title to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO ritirement_titles_unique
FROM retirement_titles AS rt
ORDER BY emp_no ASC, from_date DESC
;

-- Retrieve the number of employees by their most recent job title who are about to retire
-- Count the number of employees for each title who are about to retire 
-- Enter the data into a new table which has title the count of employees (descending order)
SELECT
COUNT (rtu.emp_no),
rtu.title
INTO retiring_titles
FROM ritirement_titles_unique as rtu
GROUP BY rtu.title
ORDER BY rtu.count DESC
;

-- Module 7 Deliverable 2

-- Retrieve emp_no, first_name, last_name from employees. Retrieve from_date and to_date from deptemp and finally title from titles. 
-- Join employees and deptemp on primary key and employees and title on primary key
-- Filter eligiblity by selecting current employees (from deptemp, filter for to_date as '9999-01-01' )
-- Filter for date range and then remove duplicate rows  using DISCTINCT ON employee number
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
dt.from_date,
dt.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN deptemp as dt
ON e.emp_no = dt.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (dt.to_date = '9999-01-01')
ORDER BY e.emp_no
;