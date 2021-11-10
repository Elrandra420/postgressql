SELECT employees.ename, department.dept FROM employees JOIN department USING (eid);

SELECT 
    employees.ename,
    (SELECT department.dept AS "dept name"
        FROM department
        WHERE department.eid = employees.eid)
    FROM employees;