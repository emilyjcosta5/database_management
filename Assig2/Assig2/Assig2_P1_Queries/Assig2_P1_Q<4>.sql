-- 4. Retrieve the names of all employees of the Research department who work more than 10 hours per week on the ProductX project. 


SELECT fname, lname
FROM employee, works_on, project
WHERE dno = '5' 
AND ssn = essn AND pno = pnumber AND pname = 'ProductX' AND hours > '10';
