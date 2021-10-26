-- FULL JOIN
-- SELECT employees.ename, department.dept FROM employees FULL JOIN department ON employees.eid = department.eid;
SELECT employees.ename, department.dept FROM employees FULL JOIN department USING(eid);
