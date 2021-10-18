SELECT pfirstname AS "Name", pfavorites -> 'Desserts' @> CAST('["banana"]' AS JSONB) AS "Is Favorite Banana?" FROM people LIMIT 10;
SELECT pfirstname AS "Name", pfavorites @> CAST('{"Desserts":["banana"]}' AS JSONB) AS "Is Favorite Banana?" FROM people LIMIT 10;
