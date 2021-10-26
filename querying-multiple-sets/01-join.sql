SELECT employees.ename, department.dept FROM employees JOIN department ON employees.eid = department.eid;
SELECT cname FROM customers UNION SELECT mname FROM movies;