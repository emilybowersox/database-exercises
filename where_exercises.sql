use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
select *
from employees
where last_name like 'e%';
-- '%e%' means contains 'e'
-- wheras 'e%' means starts with

# Find all employees hired in the 90s — 135,214 rows.


# Find all employees born on Christmas — 842 rows.


# Find all employees with a 'q' in their last name — 1,873 rows.