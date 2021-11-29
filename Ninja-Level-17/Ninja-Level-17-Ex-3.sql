SELECT
    pid,
    count(liid)
    FROM people NATURAL LEFT JOIN lists
        NATURAL JOIN listitems
    GROUP BY pid
    HAVING count(liid) <= 4
    ORDER BY count DESC;

DELETE FROM people 
    WHERE pid IN (SELECT pid 
        WHERE (SELECT count(liid)
            FROM people AS i NATURAL LEFT JOIN lists
                NATURAL LEFT JOIN listitems
            WHERE people.pid = i.pid
            GROUP BY pid) <= 4);

SELECT 'CONGRADULATIONS!' AS "MESSAGE";