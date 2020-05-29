use employees;

show tables;

describe employees;
-- emp_no is the primary key
describe departments;
-- pks: dept_no and dept_name
describe dept_emp;
-- pks: dept_no and emp_no
describe dept_manager;
-- pks: dept_no and emp_no
describe salaries;
-- primary keys: emp_no and from_date
describe titles;
-- primary keys: emp_no and from_date and title

--

#
# use codeup_test_db;
# show tables;
#
# describe albums;
# -- id is the primary key
#
# # Add an index to make sure all album names combined with the artist are unique.
# # Try to add duplicates to test the constraint.
#
# alter table albums
# add unique (artist, name);
# -- now artist is a mul (multiple) key
