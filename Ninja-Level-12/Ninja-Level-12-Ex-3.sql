SELECT cname FROM customers UNION 
    SELECT ename FROM employees;

-- For Funzies
SELECT cname FROM customers UNION 
    SELECT ename FROM employees UNION
    SELECT mname FROM movies;