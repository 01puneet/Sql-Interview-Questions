-- Show the top 3 highest paid employees per department.
SELECT 
    base.dept_id,
    d.dept_name,
    base.salary
FROM (
    SELECT 
        dept_id,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY dept_id 
            ORDER BY salary DESC
        ) AS rn
    FROM employees
) base 
LEFT JOIN departments d
    ON base.dept_id = d.dept_id
WHERE base.rn <= 3;
