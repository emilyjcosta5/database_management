-- 5. Retrieve the names of all employees who work on all projects [every project] 
-- located in either Bellaire or Sugarland. That is, if p1, p2, and p3 are in Bellaire; 
-- and p4 and p5 are located in Sugarland; then I want an employee who works on p1, p2, p3, p4, and p5.


SELECT DISTINCT fname, lname
FROM ((employee JOIN works_on ON ssn=essn) JOIN project ON pnumber=pno) 
WHERE plocation='Bellaire' OR plocation='Sugarland';