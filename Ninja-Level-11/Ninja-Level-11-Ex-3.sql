SELECT employees.ename, department.dept FROM department RIGHT JOIN employees USING(eid);
SELECT employees.ename, department.dept FROM employees LEFT JOIN department USING(eid);