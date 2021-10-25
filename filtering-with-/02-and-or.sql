-- SELECT <expression> AS <alias> FROM <table> WHERE <criteria> AND/OR <criteria>;

-- SELECT pfirstname, plastname, pstate, pcity FROM  people WHERE pstate = 'NY' AND pcity = 'Cincinnati';
SELECT pfirstname, plastname, pstate, pcity FROM  people WHERE pstate = 'NY' OR pcity = 'Cincinnati';