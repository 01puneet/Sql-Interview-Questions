-- List all managers and how many employees report to them.

select 
m.emp_id as manager_id,
m.emp_name as manager_name,
count(e.manager_id) as count_of_employees_reported
 from employees m
 inner join employees e
 on m.emp_id=e.manager_id
 where e.manager_id is not null
group by 1,2
;