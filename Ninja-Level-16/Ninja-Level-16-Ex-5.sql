SELECT
    pid, 
    count(lid)
    FROM people NATURAL LEFT JOIN lists
    GROUP BY pid
    ORDER BY count DESC;

UPDATE people
    SET ppoints = ppoints + 1000
    WHERE pid IN (SELECT 
        pid
        WHERE (SELECT count(lid)
            FROM people AS i NATURAL LEFT JOIN lists
            WHERE people.pid = i.pid
            GROUP BY pid) > 1);

-- Alternate Answer

UPDATE people
    SET ppoints = ppoints + 1000
    WHERE pid IN (SELECT pid
        WHERE (SELECT count(lid)
            FROM lists
            WHERE people.pid = lists.pid
            GROUP BY pid) > 1);
