-- Show average salary per department.

select 
dept_id,
avg(salary) as dept_avg_salary
from 
employees
group by 1;