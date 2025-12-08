-- Find employees earning more than their department average.

select base.emp_id,base.dept_id,base.salary from (
select e.emp_id,e.emp_name,e.salary,d.dept_id,d.avg_department_salary from employees e
 join (
select dept_id, avg(salary)as avg_department_salary
from employees 
group by 1)d
on e.dept_id=d.dept_id
)base
where base.salary>base.avg_department_salary;

-- using window function:

select base.emp_id,base.emp_name, base.dept_id,d.name as department_name, base.salary from (
select e.emp_id,e.emp_name, e.dept_id,e.salary, avg(salary) over(partition by dept_id) as avg_salary
  from employees e) base
  left join departments d