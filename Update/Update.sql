SELECT ppoints FROM people ORDER BY pid LIMIT 10;
UPDATE people SET ppoints = ppoints + 10;
-- UPDATE people SET ppoints = ppoints + 10 WHERE pid <= 10;