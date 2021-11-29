-- Filtering Results
-- two ways:
    -- WHERE: filters before database groups records
            -- can use any column, even ones not in the group by list
    -- HAVING: filters after database groups records
            -- can use aggregate functions over the group

SELECT pcity, pstate, count(*) AS "people per city" FROM people
    GROUP BY pcity, pstate
    HAVING count(*) >= 2
    ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, count(*) AS "people per city" FROM people
    WHERE ppoints > 500
    GROUP BY pcity, pstate
    HAVING count(*) >= 2
    ORDER BY "people per city" DESC, pcity ASC;

SELECT pcity, pstate, count(*) AS "people per city" FROM people
    WHERE pcity LIKE 'A%'
    GROUP BY pcity, pstate
    HAVING count(*) >= 2
    ORDER BY "people per city" DESC, pcity ASC;