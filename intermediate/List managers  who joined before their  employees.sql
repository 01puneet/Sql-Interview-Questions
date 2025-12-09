-- List managers  who joined before their  employees.

select 
m.emp_id as manager_id,
m.emp_name as manager_name,
m.join_date as manager_joining_date
from employees m
inner join employees e
on m.emp_id = e.manager_id
where m.join_date < e.join_date;