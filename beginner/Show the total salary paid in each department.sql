-- Show the total salary paid in each department.

select e.dept_id as department_id,
d.name as department_name,
sum(e.salary) as Total_Salary
from departments d
left join   employees e
on d.dept_id=e.dept_id
group by 1,2;