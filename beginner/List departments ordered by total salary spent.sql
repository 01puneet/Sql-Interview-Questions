-- List departments ordered by total salary spent.
SELECT 
    base.dept_id,
    d.dept_name,
    base.total_salary_spent
FROM (
    SELECT 
        dept_id,
        SUM(salary) AS total_salary_spent
    FROM employees
    GROUP BY 1
) base
LEFT JOIN departments d
    ON base.dept_id = d.dept_id
ORDER BY base.total_salary_spent DESC;

-- solution 2 more cleaner
SELECT 
    e.dept_id,
    d.dept_name,
    SUM(e.salary) AS total_salary_spent
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY 1,2
ORDER BY total_salary_spent DESC;
