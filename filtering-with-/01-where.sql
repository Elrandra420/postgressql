-- SELECT * FROM people;
-- SELECT pfirstname, pstate FROM people WHERE pstate = 'CA';

SELECT pstate, COUNT(pstate) AS "total" FROM people GROUP BY pstate ORDER BY total;