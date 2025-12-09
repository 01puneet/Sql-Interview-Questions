-- Show employees earning above company average.
select emp_id, emp_name,salary
from employees 
where salary > (select avg(salary) from employees);