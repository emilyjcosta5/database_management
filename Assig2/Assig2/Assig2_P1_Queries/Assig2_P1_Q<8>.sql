-- 8. Retrieve the names of all employees who work in the department that has the employee with the highest salary among all employees. 

SELECT fname,lname
FROM employee
WHERE dno=(SELECT dno 
		    FROM employee 
		    WHERE salary=(SELECT MAX(SALARY) 
						   FROM employee));