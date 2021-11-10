-- better way to write
SELECT rentals.rid, customers.cname FROM rentals JOIN customers USING (cid);

-- long way
-- SELECT rentals.rid, (SELECT customers.cname FROM customers WHERE rentals.cid = customers.cid) AS "name" from rentals;
-- SELECT customers.cname, (SELECT count(*) FROM rentals WHERE customers.cid=rentals.cid) AS "# Rentals" FROM customers;

-- from wishlists database
-- SELECT people.pid, people.pfirstname FROM people WHERE people.pid > (SELECT AVG(people.pid) FROM people);