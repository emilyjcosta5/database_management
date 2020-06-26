-- 7. For each department whose average employee salary is more than $30,000, 
-- retrieve the department name and the number of male employees working for that department.


SELECT dname, COUNT(*)
FROM department JOIN employee ON dnumber=dno 
WHERE sex='M'
GROUP BY dname HAVING AVG(salary) > '3000';