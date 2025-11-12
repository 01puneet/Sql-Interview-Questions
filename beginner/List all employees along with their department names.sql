-- List all employees along with their department names.
-- using inner join
select 
e.emp_id,
e.emp_name,
d.* 
from employees e
inner join departments d
on e.dept_id=d.dept_id;

-- using left join- fetches all the records from left table even if a employee doesnt have a department
select 
e.emp_id,
e.emp_name,
d.dept_id,
d.name
from employees e
left join departments d
on e.dept_id=d.dept_id;


