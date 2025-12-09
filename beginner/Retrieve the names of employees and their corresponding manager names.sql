
-- Retrieve the names of employees and their corresponding manager names.
select
e.emp_id,
e.emp_name,
m.emp_id as manager_id ,
m.emp_name as manager_name
from employees e
join employees m
on e.manager_id=m.emp_id;