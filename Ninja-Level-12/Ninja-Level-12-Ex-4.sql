SELECT pfirstname, plastname FROM people LIMIT 10;

SELECT pfirstname, plastname, lname FROM people
    JOIN lists ON (people.pid=lists.pid)
    LIMIT 10;

SELECT pfirstname, plastname, lname, iname FROM people
    JOIN lists USING(pid)
    LEFT JOIN listitems USING(lid)
    LEFT JOIN items USING(iid)
    LIMIT 10;
