-- Find departments where no employee is assigned.
select * from departments d
left join employees e
on d.dept_id=e.dept_id
where e.dept_id is Null;
