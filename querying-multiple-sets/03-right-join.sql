-- RIGHT JOIN
SELECT employees.ename, department.dept FROM employees RIGHT JOIN department ON employees.eid = department.eid;