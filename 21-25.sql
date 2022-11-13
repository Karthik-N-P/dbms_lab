--21) delete the dpt no 3 from database

Delete from DEPARTMENT where dnumber=3;

-- 24) change the location dnum of projectno 10 to kerala and 5 
UPDATE PROJECT set plocation='kolkata', dnum=5 where PNUMBER=2;
SELECT * from PROJECT

--25) give all employee in the sales dpt a 10% hike
UPDATE EMPLOYEE SET salary= salary + ((salary * 10) / 100) WHERE dno in(SELECT dnumber  from DEPARTMENT where dname='Sales');


