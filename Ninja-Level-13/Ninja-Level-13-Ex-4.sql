SELECT
    department.dept,
    employees.ename
    FROM employees RIGHT JOIN department USING (eid);

SELECT 
    department.dept,
    (SELECT employees.ename
        FROM employees
        WHERE employees.eid = department.eid)
        AS "employee name"
    FROM employees RIGHT JOIN department USING (eid);