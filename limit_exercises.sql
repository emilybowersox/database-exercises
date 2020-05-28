use employees;

SELECT DISTINCT title FROM titles;

select distinct last_name
from employees
order by last_name desc
limit 10;

select first_name, last_name
from employees
where hire_date like '199%'
  and birth_date like '%12-25'
order by birth_date, hire_date DESC
limit 5 offset 45;

