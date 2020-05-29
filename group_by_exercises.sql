use employees;
use titles;

-- In your script, use DISTINCT to find the unique titles in the titles table.
select distinct title
from titles;

select distinct last_name
from employees
where last_name like 'E%'
  and last_name like '%e'
group by last_name;
-- group by means it is grouped in ascending order by the alphabetical spelling of
-- last_name vs. by emp_no??

select distinct last_name, first_name
from employees
where last_name like 'E%'
  and last_name like '%e';

select distinct last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%';
-- so the % before or after doesn't mean something has to be before or after,
-- just can be


select distinct last_name, count(*)
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name
order by count(*);
-- cannot use 'count' without 'group by'

SELECT gender, count(*) as count
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender
order by count(*);