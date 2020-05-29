use employees;

# write a query that shows each department along with the
# name of the current manager for that department.

select d.dept_name, concat(e.first_name, ' ', e.last_name) as Department_Manager
from departments as d
    join dept_manager as dm
    on dm.dept_no = d.dept_no
    join employees as e
    on e.emp_no = dm.emp_no
    where dm.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
select d.dept_name, concat(e.first_name, ' ', e.last_name) as Department_Manager
from departments as d
         join dept_manager as dm
              on dm.dept_no = d.dept_no
         join employees as e
              on e.emp_no = dm.emp_no
        where dm.to_date = '9999-01-01'
        AND e.gender = "F";

# Find the current titles of employees currently working
# in the Customer Service department.
select title, count(title) as count
#      , count(title) as number_of_employees
from titles as t
join dept_emp as de
    on de.emp_no = t.emp_no
join departments as d
     on d.dept_no = de.dept_no
    where d.dept_no = 'd009'
    and de.to_date = '9999-01-01'
    and t.to_date = '9999-01-01'
    group by title;



# Find the current salary of all current managers.





# Bonus Find the names of all current employees,
# their department name, and their current manager's name.