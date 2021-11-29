SELECT pfirstname, plastname, count(liid) 
    FROM people NATURAL LEFT JOIN lists 
        NATURAL LEFT JOIN listitems 
    GROUP BY pfirstname, plastname 
    ORDER BY count DESC LIMIT 20;

SELECT 
    pfirstname, plastname, count(lid) AS "num lists", count(liid) AS "num list items" 
    FROM people NATURAL LEFT JOIN lists 
        NATURAL LEFT JOIN listitems 
    GROUP BY pfirstname, plastname 
    ORDER BY "num list items" DESC, "num lists" DESC LIMIT 20;

-- BONUS
SELECT 
    pfirstname, plastname, (SELECT count(lid) FROM lists WHERE lists.pid = people.pid) AS "num lists", 
    count(liid) AS "num list items" 
    FROM people NATURAL LEFT JOIN lists 
        NATURAL LEFT JOIN listitems 
    GROUP BY pid, pfirstname, plastname 
    ORDER BY "num list items" DESC, "num lists" DESC LIMIT 20;