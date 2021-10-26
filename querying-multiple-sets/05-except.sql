-- EXCEPT
SELECT employees.eid FROM employees EXCEPT SELECT department.eid FROM department;
SELECT department.eid FROM department EXCEPT SELECT employees.eid FROM employees;