-- Find employees who do not belong to any department.

select 
e.emp_id,
e.emp_name,
d.dept_id
from employees e
left join departments d
on e.dept_id= d.dept_id
where  e.dept_id is Null;