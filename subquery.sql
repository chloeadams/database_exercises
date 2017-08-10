-- Use sub queries to find information in the employees database
-- Craft queries to return the results for the following criteria:

-- Find all the employees with the same hire date as employee 101010 using a sub-query.
-- 101010	1957-08-11	Demos	Christ	F	1990-10-22
select first_name, last_name from employees
where hire_date in (
select hire_date
from employees
where emp_no = 101010);
-- 69 Rows

-- Find all the titles held by all employees with the first name Aamod.
select distinct title 
from titles
where emp_no in (
select emp_no from employees
where first_name = "Aamod");




-- 314 total titles, 6 unique titles

-- Find all the current department managers that are female.
SELECT first_name, last_name
from employees
where emp_no in (
select emp_no
from dept_manager
where to_date > now()
) and gender = 'F';



--  +------------+------------+
--  | first_name | last_name  |
--  +------------+------------+
--  | Isamu      | Legleitner |
--  | Karsten    | Sigstam    |
--  | Leon       | DasSarma   |
--  | Hilary     | Kambil     |
--  +------------+------------+
-- BONUS Find all the department names that currently have female managers.

--departments
select dept_name
from departments
where dept_no in (
-- dept manager
	select dept_no from dept_manager
	where emp_no in (
		select emp_no from employees
		where gender = 'F')
--employees
and to_date > now ()
);
--  +-----------------+
--  | dept_name       |
--  +-----------------+
--  | Development     |
--  | Finance         |
--  | Human Resources |
--  | Research        |
--  +-----------------+