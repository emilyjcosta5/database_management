-- 9a. Create a View ProjectInfo that has the project name, controlling department name, number of employees, 
-- and total hours worked per week on the project for each project with more than one employee working on it.
-- 9b. Show the content of this view


-- 9a
CREATE VIEW ProjectInfo (project_name, department_name, number_of_employees, total_num_hours)
AS
SELECT pname, dname, COUNT(*), SUM(hours)
FROM project, department, works_on
WHERE pnumber=pno AND dnumber=dnum 
GROUP BY pname, dname HAVING COUNT(*)>1;

-- 9b
SELECT * FROM ProjectInfo;
