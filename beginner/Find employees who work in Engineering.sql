
-- Find employees who work in Engineering.
select e.emp_id,e.emp_name,e.dept_id,d.dept_name
 from employees e
inner join departments d
on e.dept_id=d.dept_id
where d.dept_name='Engineering';