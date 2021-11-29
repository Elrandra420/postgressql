-- use single quotes with text
-- UPDATE people SET pfirstname = 'James', plastname = 'Bond' WHERE pid = 1;
-- UPDATE people SET (pfirstname, plastname) = ('first', 'last');
        -- you can use a select statement on the right, so long as it
            -- returns the right amount of fields
            -- of the right data type

SELECT pid, pfirstname, plastname AS "BEFORE" FROM people ORDER BY pid LIMIT 10;

UPDATE people SET pfirstname = 'James', plastname = 'Bond' WHERE pid = 1;

SELECT pid, pfirstname, plastname AS "AFTER" FROM people ORDER BY pid LIMIT 10;
-- SELECT pfirstname, plastname FROM people;