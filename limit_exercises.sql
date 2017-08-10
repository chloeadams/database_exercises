select last_name 
from employees
GROUP BY last_name desc
limit 10;

select * from employees
where hire_date > '199%'
and birth_date like '%12-25'
order by birth_date asc, hire_date desc 
limit 5;
