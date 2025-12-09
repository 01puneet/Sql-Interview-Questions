-- Find departments where average salary > company average.

-- Solution 1- Using groupby & having
SELECT 
    dept_id, AVG(salary) AS department_avg_salary
FROM
    employees
GROUP BY dept_id
HAVING department_avg_salary > (SELECT 
        AVG(salary)
    FROM
        employees);

-- solution 2- using window function
select * from 
(
select 
e.dept_id, 
d.dept_name,
avg(salary) over (partition by dept_id) as department_average_salary, 
row_number() over(partition by dept_id order by salary) as rn
 from 
employees e
left join 
departments d
on e.dept_id=d.dept_id
)base
where base.rn=1
and base.department_average_salary > (select avg(salary) as company_avg_salary from employees)
;

-- Solution 3- using cte 
with base_cte as (
select 
dept_id,
avg(salary) over(partition by dept_id) as dept_avg_salary,
avg(salary) over() as company_avg_salary
from employees
)
select 
distinct dept_id,
dept_avg_salary
from base_cte
where dept_avg_salary > company_avg_salary;