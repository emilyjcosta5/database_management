-- 1. Retrieve the name and address of each employee that works in the Administration department. 

select 
    fname, Lname, bdate, address
from
    employee
where
    dno = '4';