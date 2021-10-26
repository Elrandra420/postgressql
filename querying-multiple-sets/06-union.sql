-- UNION
SELECT cname FROM customers UNION SELECT mname FROM movies;
SELECT cname FROM customers UNION SELECT mname FROM movies ORDER BY cname;
SELECT cname AS "RESULTS" FROM customers UNION SELECT mname FROM movies ORDER BY "RESULTS";