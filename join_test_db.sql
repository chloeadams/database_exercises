-- Join Example Database

-- Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.

-- Insert 4 new users into the database. One should have a NULL role. The other three should be authors.

-- Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

-- Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.

-- Employees Database

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

--    Department Name    | Department Manager
--   --------------------+--------------------
--    Customer Service   | Yuchang Weedman
--    Development        | Leon DasSarma
--    Finance            | Isamu Legleitner
--    Human Resources    | Karsten Sigstam
--    Marketing          | Vishwani Minakawa
--    Production         | Oscar Ghazalie
--    Quality Management | Dung Pesch
--    Research           | Hilary Kambil
--    Sales              | Hauke Zhang
-- Find the name of all departments currently managed by women.

--  Department Name | Manager Name
--  ----------------+-----------------
--  Development     | Leon DasSarma
--  Finance         | Isamu Legleitner
--  Human Resources | Karsetn Sigstam
--  Research        | Hilary Kambil
-- Find the current titles of employees currently working in the Customer Service department.

--  Title              | Count
--  -------------------+------
--  Assistant Engineer |    68
--  Engineer           |   627
--  Manager            |     1
--  Senior Engineer    |  1790
--  Senior Staff       | 11268
--  Staff              |  3574
--  Technique Leader   |   241
-- Find the current salary of all current managers.

--  Department Name    | Name              | Salary
--  -------------------+-------------------+-------
--  Customer Service   | Yuchang Weedman   |  58745
--  Development        | Leon DasSarma     |  74510
--  Finance            | Isamu Legleitner  |  83457
--  Human Resources    | Karsten Sigstam   |  65400
--  Marketing          | Vishwani Minakawa | 106491
--  Production         | Oscar Ghazalie    |  56654
--  Quality Management | Dung Pesch        |  72876
--  Research           | Hilary Kambil     |  79393
--  Sales              | Hauke Zhang       | 101987
-- Bonus Find the names of all current employees, their department name, and their current manager's name.

--     240,124 Rows

--     Employee Name | Department Name  |  Manager Name
--     --------------|------------------|-----------------
--      Huan Lortz   | Customer Service | Yuchang Weedman


--  write a query that shows each department along with the name of the current manager for that department.

select departments.dept_name, concat(employees.first_name, " ", employees.last_name) as "current manager"
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > now();

-- Find the name of all departments currently managed by women.
select concat(employees.first_name, " ", employees.last_name) as "Manager Name", departments.dept_name as "Department Name"
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > now()
AND employees.gender = "F";

-- Find the current titles of employees currently working in the Customer Service department.
select titles.title as "Title", count(*) as "Count"
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join titles on titles.emp_no = dept_emp.emp_no
where dept_emp.to_date > now()
AND titles.to_date > now()
and departments.dept_name = "Customer Service"
group by titles.title;


-- Find the current salary of all current managers.
select departments.dept_name, concat(employees.first_name, " ", employees.last_name) as "Manager", salaries.salary
from salaries
join dept_manager ON dept_manager.emp_no = salaries.emp_no
join employees on employees.emp_no = dept_manager.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > now()
AND salaries.to_date > now();


-- Find the names of all current employees, their department name, and their current manager's name.
select concat(e.first_name, " ", e.last_name) as "Employee Name", departments.dept_name as "Department Name", concat(managers.first_name, " ", managers.last_name) as "Manager Name"
from employees as e
join dept_emp on dept_emp.emp_no = e.emp_no
join departments on departments.dept_no = dept_emp.dept_no
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees as managers on dept_manager.emp_no = managers.emp_no
where dept_emp.to_date > now()
and dept_manager.to_date > now();