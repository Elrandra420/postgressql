SELECT pfirstname, plastname, pstate, pdob FROM people 
    WHERE (pfirstname LIKE '%e%' OR plastname LIKE '%e%') AND pstate = 'CA'
    AND pdob > '12/31/1999';