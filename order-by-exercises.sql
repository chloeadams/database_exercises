/* Create a new file called order_by_exercises.sql and copy in the contents of your where_exercises.sql. Save your changes after each step and add & commit your changes with git. At the end, push all your changes to GitHub.
Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
Now reverse the sort order for both queries.
Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini. */

SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC;

SELECT first_name, last_name
FROM employees
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees
ORDER BY last_name, first_name;

select count(*) as "number of employees", gender
from employees
group by gender;

/* Open the order_by_exercises.sql script and save it as functions_exercises.sql. After each step commit your changes to git.

Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:

 441 M
 268 F
Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())

Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names. You will find there were some duplicate first and last name pairs in your previous results. Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others. */

select concat(count(*), ' ',gender) 
from employees
where first_name in ('irena','vidya','maya')
order by gender;

select concat(first_name, ' ', last_name)
from employees
where last_name like 'e%'
or last_name like '%e'
order by emp_no desc;

select concat(first_name, ' ', last_name) as 'name', datediff(now(), hire_date) / 365
from employees
where hire_date > '199%'
and birth_date like '%12-25'
order by birth_date asc, hire_date desc;

select *, count(*) from employees
where last_name not like '%qu%'
and last_name like '%q%'
group by first_name, last_name
order by first_name;







