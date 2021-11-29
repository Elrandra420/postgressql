UPDATE people 
    SET ppoints = ppoints + 100 
    WHERE ppoints <= (SELECT avg(ppoints) FROM people)
    RETURNING pid, ppoints;

SELECT pid, ppoints 
    FROM people 
    WHERE ppoints <=  (SELECT avg(ppoints) FROM people)
    ORDER BY pid 
    LIMIT 10;
