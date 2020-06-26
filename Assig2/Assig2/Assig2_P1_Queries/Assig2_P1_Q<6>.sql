-- 6. Find the names of all employees who work on at least one project located in Houston but whose department has no location in Houston. 

SELECT fname, lname 
FROM employee 
WHERE EXISTS (SELECT *
			  FROM works_on, project
			  WHERE ssn=essn AND pno=pnumber AND plocation='Houston') 
	  		  AND NOT EXISTS (SELECT * 
	  				  		  FROM dept_locations 
	  				  		  WHERE dno=dnumber AND dlocation='Houston');
