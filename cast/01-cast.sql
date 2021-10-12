SELECT CAST (ppoints AS TEXT) FROM people;
SELECT ppoints AS "one", CAST (ppoints AS NUMERIC) AS "two" FROM people;
SELECT pid AS "one", CAST (pid AS numeric) AS "two" FROM people;