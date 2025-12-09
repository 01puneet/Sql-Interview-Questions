-- Find the highest salary in each department.

select 
d.dept_id,
d.name as department_name,
coalesce(max(salary),0 )as highest_salary
from departments d
left join employees e
on d.dept_id= e.dept_id
group by 1,2;

-- solution 2:
-- Find the highest salary in each department.
SELECT
    base.dept_id,
    d.dept_name,
    base.highest_salary_in_dept
FROM (
    SELECT 
        dept_id,
        MAX(salary) AS highest_salary_in_dept
    FROM employees
    GROUP BY 1
) base
LEFT JOIN departments d
    ON base.dept_id = d.dept_id;
