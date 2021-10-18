SELECT pfirstname AS "Name", (pfavorites -> 'Desserts') ? 'ice cream' AS "Desserts" FROM people LIMIT 10;
SELECT pfirstname AS "Name", (pfavorites -> 'Desserts') ? 'ice cream' AS "Desserts" 
    FROM people WHERE (pfavorites -> 'Desserts') ? 'ice cream' LIMIT 10;
