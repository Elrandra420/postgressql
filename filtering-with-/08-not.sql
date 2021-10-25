-- SELECT pfirstname, plastname, pstate, pcity FROM  people WHERE pcity IS NOT NULL LIMIT 10;
-- SELECT pfirstname, plastname, pstate, pcity FROM  people WHERE pstate = 'NY' AND pcity NOT LIKE 'A%' ORDER BY pcity ASC;
SELECT pfirstname, plastname, pstate, pcity FROM  people WHERE pcity NOT LIKE 'A%' ORDER BY pcity ASC;
