-- SELECT * FROM customers;
-- METHOD #1 - SUBQUERY
-- UPDATE customers
--     SET cname = CONCAT(cname, '+HERO')
--     WHERE customers.cid IN (SELECT rentals.cid
--         FROM rentals NATURAL FULL JOIN movies
--         WHERE customers.cid = rentals.cid
--         AND movies.mname = 'The Lives of Others');

-- METHOD #1 - SUBQUERY
-- UPDATE customers
--     SET cname = CONCAT(cname, '+HERO')
--     WHERE customers.cid IN (SELECT rentals.cid
--         FROM rentals NATURAL FULL JOIN movies
--         WHERE movies.mname = 'The Lives of Others');
-- SELECT * FROM customers;

-- METHOD #2 - FROM
-- UPDATE customers
--     SET cname = CONCAT(cname, '+HERO')
--     FROM rentals, movies
--     WHERE customers.cid = rentals.cid
--         AND rentals.mid = movies.mid
--         AND movies.mname = 'The Lives of Others';

SELECT * FROM customers; 

-- Different formats for SELECT
SELECT customers.cid, cname, rid, mname 
    FROM customers NATURAL FULL JOIN rentals 
    NATURAL FULL JOIN movies;

-- SELECT customers.cid, cname, rid, mname 
--     FROM customers, rentals, movies
--     WHERE customers.cid = rentals.cid
--     AND rentals.mid = movies.mid;

UPDATE customers
    SET cname = concat(customers.cname, '+HERO')
    FROM customers AS c NATURAL JOIN rentals NATURAL JOIN movies
    WHERE customers.cid = c.cid
    AND movies.mname = 'The Lives of Others';

SELECT * FROM customers;