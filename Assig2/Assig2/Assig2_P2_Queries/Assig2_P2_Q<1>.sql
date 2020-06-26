-- 1. List the departure date, flight number and the number of booked customers.


SELECT Departure_Date, flight_num, COUNT(*)
FROM booked_on
GROUP BY Departure_Date, flight_num