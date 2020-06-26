-- 2. Retrieve the name and SSN of each employee that either works in department 4 or has a salary lower
-- or equal to $30,000. You are allowed to use only one condition term in any WHERE clause; i.e., don't use
-- AND/OR Boolean operations

SELECT fname, lname, ssn 
FROM employee
WHERE dno = '4' 
UNION
SELECT fname, lname, ssn 
FROM employee
WHERE salary <= '30000';
