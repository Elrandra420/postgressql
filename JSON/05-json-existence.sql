SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) -> 'favoriteFoods' ? 'Banana';
SELECT (CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) -> 'favoriteFoods') ? 'Banana';
SELECT (CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) -> 'favoriteFoods') ? 'Apple';