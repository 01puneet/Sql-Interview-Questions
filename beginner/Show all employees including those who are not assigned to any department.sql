-- Show all employees including those who are not assigned to any department.

select 
e.emp_id,
e.emp_name,
d.name as department_name
from employees e
left join departments d
on e.dept_id=d.dept_id;