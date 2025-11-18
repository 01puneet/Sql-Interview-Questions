-- Display all departments and the number of employees in each department.
-- solution using left join
select d.dept_id,d.name,count(e.emp_id) as Number_of_employees from departments d
left join employees e
on d.dept_id=e.dept_id
group by d.dept_id, d.name;
-- solution using inner join
select d.dept_id,d.name,count(e.emp_id) as Employee_count from departments d
inner join employees e
on d.dept_id=e.dept_id
group by d.dept_id, d.name;