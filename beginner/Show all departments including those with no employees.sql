-- Show all departments including those with no employees.

select 
d.dept_id,
d.name,
e.emp_id,
e.emp_name
from departments d
left join employees e
on d.dept_id=e.dept_id;