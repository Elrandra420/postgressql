SELECT people.pcity, people.pstate, count(*) AS "people per city" FROM people 
    GROUP BY people.pcity, people.pstate;
SELECT people.pcity, people.pstate, count(*) AS "people per city" FROM people 
    GROUP BY people.pcity, people.pstate ORDER BY "people per city" DESC, people.pcity ASC LIMIT 10;
-- SELECT people.pcity, people.pstate, count(*) AS "people per city" FROM people 
    -- GROUP BY people.pstate, people.pcity ORDER BY "people per city" DESC, people.pcity ASC LIMIT 10;
