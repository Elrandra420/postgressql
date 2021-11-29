-- select pcity, COUNT(*) AS "population" FROM people GROUP BY pcity;

-- SELECT people.pcity, COUNT(*) AS "people per city" FROM people GROUP BY people.pcity;
-- SELECT people.pcity, COUNT(*) AS "people per city" FROM people GROUP BY people.pcity ORDER BY "people per city" DESC;
-- SELECT people.pstate, COUNT(*) AS "people per state" FROM people GROUP BY people.pstate;
-- SELECT people.pstate, COUNT(*) AS "people per state" FROM people GROUP BY people.pstate ORDER BY "people per state" DESC;


-- WRONG
-- SELECT 
--     pfirstname,
--     plastname,
--     (SELECT count(*) FROM listitems WHERE listitems.lid = lists.lid)
--     FROM people JOIN lists USING (pid)
--     WHERE (SELECT count(*) FROM listitems WHERE listitems.lid = lists.lid) > 1
--     ORDER BY count DESC;


SELECT 
    pfirstname,
    plastname,
    count(*) AS "# of items"
    FROM people
    JOIN lists USING(pid)
    JOIN listitems USING(lid)
    GROUP BY pfirstname, plastname
    ORDER BY "# of items" DESC;

SELECT pfirstname, listitems
    FROM people
    JOIN lists USING(pid)
    JOIN listitems USING(lid   )
    WHERE pfirstname = 'Ideipepzekir';