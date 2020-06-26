-- 10a. Create a View DepartmentInfo that has the department name, manager name for each department.
-- 10b. Show the content of this view

-- 10a 
CREATE VIEW DepartmentInfo (department_name, mgr_fname, mgr_lname)
AS
SELECT dname, fname, lname
FROM DEPARTMENT, EMPLOYEE
WHERE DEPARTMENT.Mgr_ssn = EMPLOYEE.Ssn 
GROUP BY dname, fname, lname;

-- 10b
SELECT * FROM DepartmentInfo;