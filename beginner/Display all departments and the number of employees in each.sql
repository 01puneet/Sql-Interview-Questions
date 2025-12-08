-- Display all departments and the number of employees in each.
select 
d.dept_id,
d.name as department_name,
count(e.emp_id) as Total_employees
from departments d
left join employees e
on d.dept_id=e.dept_id
group by d.name, d.dept_id;