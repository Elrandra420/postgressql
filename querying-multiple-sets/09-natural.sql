-- one more way to do join:
SELECT customers.cname, movies.mname FROM customers NATURAL JOIN rentals NATURAL JOIN movies;

-- the other ways:
-- SELECT customers.cname, movies.mname FROM customers
--  JOIN rentals USING(cid) JOIN movies USING(mid);

-- This might be the most common way to join/most clear way
-- SELECT customers.cname, movies.mname FROM customers
--  JOIN rentals ON (customers.cid=rentals.cid) JOIN movies ON (rentals.mid=movies.mid);

-- Does not work with left or right join
-- SELECT customers.cname, movies.mname FROM customers, rentals, movies
--  WHERE customers.cid=rentals.cid AND rentals.mid=movies.mid;