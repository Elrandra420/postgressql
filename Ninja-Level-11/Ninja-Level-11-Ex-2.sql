SELECT customers.cname AS "Customers", movies.mname AS "Movie", rentals.rid AS "Rental ID"
    FROM customers NATURAL JOIN rentals NATURAL JOIN movies
    LIMIT 10;
