-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints = (SELECT MAX(ppoints) FROM people);

SELECT customers.cname, (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) AS "AMT" FROM customers WHERE (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid)>2;