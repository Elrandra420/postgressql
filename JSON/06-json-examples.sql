-- ONE
-- SELECT * FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites FROM people LIMIT 10;
-- SELECT pfirstname AS "Name", pfavorites -> 'Destinations' FROM people LIMIT 10;
-- SELECT pfirstname AS "Name", pfavorites -> 'Destinations' AS "Destinations" FROM people LIMIT 10;

-- FUN accessing array item
-- SELECT pfirstname AS "Name", pfavorites -> 'Destinations' -> 3 AS "Destinations" FROM people LIMIT 10;

-- TWO
-- SELECT pfirstname AS "Name", pfavorites -> 'Destinations' @> CAST('["Hawaii"]' AS JSONB) AS "HAWAII LOVERS" FROM people LIMIT 10;

-- THREE
SELECT pfirstname AS "Name", pfavorites -> 'Destinations' ? 'Hawaii' AS "HAWAII LOVERS" FROM people LIMIT 10;
