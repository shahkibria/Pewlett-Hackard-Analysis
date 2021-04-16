# Pewlett-Hackard-Analysis

Using SQL - relational databases

## Purpose of our Project

The purpose of our project is to determine the number of retiring employees by title and identify which employees are eligible to to participate in the mentorship program. Our retiring employees by title information will show the titles of all employees born between January, 1 1952 and December, 31 1955. 
We first created a query that retrieved the employee number, first and last name and titles from different database tables and created new tables. We then removed duplicates to ensure only the most current titles were included in the new table. For the second deliverbale, we created a new table which listed employees who are eligible for the mentorship program. 

## The Results

 - From the [Unique Titles](https://github.com/shahkibria/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) table, we can see a list of employees who are eligible for retirement and their latest position. 
 - The [Retiring Titles](https://github.com/shahkibria/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv) table summerizes the Uniques Titles table where we can see the total number of employees per department who are eligible for retirement. We also run a sum code on this table to determine the total number of employees eligible for retirement which is 90,398 employees.
 - The Returing Titles table also shows which titles have the highest number of retirement eligibilities. From the screenshot below, we can see that most of the employees who are about to retire are either in "Senior" or "Leader" positions. In fact a total of 62,172 employees out of the total 90,398 employees who are about to retire have either a "Senior" or "Leader" position (approximately 69%). 

   ![](https://github.com/shahkibria/Pewlett-Hackard-Analysis/blob/main/Screenshots/Retirement%20by%20Department.png)

 - The [Membership Eligibility](https://github.com/shahkibria/Pewlett-Hackard-Analysis/blob/main/Data/membership_eligibility.csv) table provides a list of employees who are eligible to enter into the mentorship program. We also ran a code to calculate the total number of employees listed in this table. This adds up to 1,549 employees. A screenshot of the table is also provided below:
 ![](https://github.com/shahkibria/Pewlett-Hackard-Analysis/blob/main/Screenshots/Mentorship%20Eligibility.png)
    
   We have also added a screenshot of the count of employees by department who are eligible for mentorship by department. 
   ![](https://github.com/shahkibria/Pewlett-Hackard-Analysis/blob/main/Screenshots/Mentorship%20Eligibility%20-%20By%20Department.png)
 
 ## Conclusion
 - From the analysis we can see that 38% of the entire workforce (90,398 employees eligible for retirement /240,124 active employees in the organization). This is a significant number of employees who will have to be replaced in the next 3-5 years and it is something the Company should to get ahead of it self. 
 - There are 1549 employees who are eligible for mentorship while there are 90,398 employees who are elibile for retirement so I believe there are enough employees. Even on an individual department level, there are 396 engineers and 62 senior engineers who are eligible for mentorship while there are 29,415 senior engineers who are eligble for retirement. There are 454 staff and 270 senior staff who are eligible for mentorship while there are 28,255 senior staff who are eligible for retirement. Overall we did not identify any departments where there aren't enough qualified, retirement-ready employees to mentor the next generation. 
