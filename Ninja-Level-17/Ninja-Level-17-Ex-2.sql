SELECT
    pid,
    count(lid)
    FROM people NATURAL LEFT JOIN lists
    GROUP BY pid
    HAVING count(lid) <= 2
    ORDER BY count DESC;

DELETE FROM people 
    WHERE pid IN (SELECT pid 
        WHERE (SELECT count(lid)
            FROM people AS i NATURAL LEFT JOIN lists
            WHERE people.pid = i.pid
            GROUP BY pid) <= 2);
