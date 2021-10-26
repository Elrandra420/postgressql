-- LEFT JOIN
SELECT employees.ename, department.dept FROM employees LEFT JOIN department ON employees.eid = department.eid;