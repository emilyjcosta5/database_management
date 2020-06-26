-- 3. List the departure date and flight number that never got any personnel assigned

SELECT dep_date, flight_num
FROM ASSIGNED_TO
WHERE Employee_no is NULL