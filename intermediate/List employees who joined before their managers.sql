
-- List employees who joined before their managers.

select 
e.emp_id,
e.emp_name,
e.join_date as employee_joining_date,
m.emp_id as manager_id,
m.emp_name as manager_name,
m.join_date as manager_joining_date
from employees e
inner join employees m
on m.emp_id=e.manager_id
where e.join_date < m.join_date;