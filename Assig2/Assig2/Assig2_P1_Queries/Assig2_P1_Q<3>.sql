-- 3 List the name and SSN of each employee that works on at least one of the projects 1, 2, and 3.
-- You can use only one condition term in any WHERE clause.

SELECT ssn, fname, lname
FROM employee JOIN works_on ON ssn=essn 
WHERE pno='1'
UNION
SELECT ssn, fname, lname
FROM employee JOIN works_on ON ssn=essn 
WHERE pno='2'
UNION
SELECT ssn, fname, lname
FROM employee JOIN works_on ON ssn=essn 
WHERE pno=‘3';
