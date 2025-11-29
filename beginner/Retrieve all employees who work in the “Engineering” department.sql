-- Retrieve all employees who work in the “Engineering” department.

select 
e.emp_id,
e.emp_name,
d.name
from employees e
inner join departments d
on e.dept_id=d.dept_id
where d.name = "Engineering";