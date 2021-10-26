-- JOIN
SELECT employees.ename, department.dept FROM employees JOIN department ON employees.eid = department.eid;
-- LEFT JOIN
-- RIGHT JOIN
-- INNER JOIN
-- FULL JOIN
-- EXCEPT
-- UNION
SELECT cname FROM customers UNION SELECT mname FROM movies;
-- CROSS JOIN