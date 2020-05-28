use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;
-- ascending is default be can also specify by ASC
-- when chaining order by clauses the first one will sort first

# Find all employees whose last name starts with 'E' — 7,330 rows.
select *
from employees
where last_name like 'e%';

-- '%e%' means contains 'e'
-- wheras 'e%' means starts with
-- and '%e' means ends with

# Find all employees hired in the 90s — 135,214 rows.
select *
from employees
where hire_date like '199%';
-- can also use between but have to put dates in strings ''

# Find all employees born on Christmas — 842 rows.
select *
from employees
where birth_date like '%12-25';

# Find all employees with a 'q' in their last name — 1,873 rows.
select *
from employees
where last_name like '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
select *
from employees
where gender = 'M'
  and (first_name = 'Irena'
    or first_name = 'Vidya'
    or first_name = 'Maya');

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select *
from employees
where last_name like 'E%'
   or last_name like '%e'
order by emp_no DESC;


# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
-- -- Update your queries for employees whose names start and end with 'E'.
-- Use concat() to combine their first and last name together as a single column in your results.

select concat (first_name, ' ', last_name) as full_name
from employees
where last_name like 'E%'
  and last_name like '%e';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
--   For your query of employees born on Christmas and hired in the 90s,
-- use datediff() to find how many days they have been working at the company
-- (Hint: You will also need to use now() or curdate())

select *, datediff(curdate(), hire_date) as days_employeed
from employees
where hire_date like '199%'
  and birth_date like '%12-25'
order by hire_date desc;

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';