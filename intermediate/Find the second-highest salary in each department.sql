select * from (
	select 
	d.dept_id,
    d.name as departmet_name,
	e.salary as second_highest_salary,
	d.name as department_name,
	row_number() over(
	partition by d.dept_id
	order by e.salary desc) as rn
	from
	departments d
	left join employees e
	on d.dept_id=e.dept_id
)t
where rn=2;