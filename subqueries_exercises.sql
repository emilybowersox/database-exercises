use employees;


# Find all the employees with the same hire date as employee 101010
# using a subquery. (69 Rows)
select concat(first_name, ' ', last_name) as full_name
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
    );
-- must be a shorter way to do this since just one table?


# Find all the titles held by all employees with the first name Aamod.
# (314 total titles, 6 unique titles)
select title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );
-- add 'distinct' for unique titles


# Find all the current department managers that are female.
select first_name, last_name
from employees
where gender = "F"
and emp_no in (
    select emp_no
    from dept_manager
    where to_date > now()
    );






# BONUS
# Find all the department names that currently have female managers.

# Find the first and last name of the employee with the highest salary.