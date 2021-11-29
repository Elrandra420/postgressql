SELECT pfirstname, plastname, count(lid) 
    FROM people NATURAL LEFT JOIN lists 
    GROUP BY pfirstname, plastname;

SELECT 
    pfirstname, plastname, count(lid) 
    FROM people NATURAL LEFT JOIN lists 
    GROUP BY pfirstname, plastname 
    ORDER BY count DESC;
