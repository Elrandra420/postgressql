SELECT movies.mname, rentals.rid, customers.cname
    FROM customers LEFT JOIN rentals USING(cid)
    LEFT JOIN movies USING(mid);

SELECT movies.mname, rentals.rid, customers.cname
    FROM customers RIGHT JOIN rentals USING(cid)
    RIGHT JOIN movies USING(mid);
