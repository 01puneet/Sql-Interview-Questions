-- Find the highest salary in each department.

select 
d.dept_id,
d.name as department_name,
coalesce(max(salary),0 )as highest_salary
from departments d
left join employees e
on d.dept_id= e.dept_id
group by 1,2;
