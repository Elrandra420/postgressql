SELECT cname from customers;

SELECT cname, count(*) from customers 
    GROUP BY cname;

SELECT cname, count(*) from customers 
    JOIN rentals USING(cid)
    GROUP BY cname;
    
SELECT cname, count(rid) from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname;