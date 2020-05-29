# write a query that shows each department along with the
# name of the current manager for that department.

use employees;

select d.dept_name, concat(e.first_name, ' ', e.last_name) as Department_Manager
from departments as d
    join dept_manager as dm
    on dm.dept_no = d.dept_no
    join employees as e
    on e.emp_no = dm.emp_no
    where dm.to_date = '9999-01-01';

