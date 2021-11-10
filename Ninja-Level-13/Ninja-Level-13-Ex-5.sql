SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM movies;

SELECT customers.cname, rentals.rid, movies.mname
    FROM (customers LEFT JOIN rentals USING (cid)) LEFT JOIN movies USING (mid);

-- SELECT
--     department.dept,
--     employees.ename
--     FROM employees RIGHT JOIN department USING (eid);

-- SELECT 
--     department.dept,
--     (SELECT employees.ename
--         FROM employees
--         WHERE employees.eid = department.eid)
--         AS "employee name"
--     FROM employees RIGHT JOIN department USING (eid);