--25) give all employee in the sales dpt a 10% hike
UPDATE EMPLOYEE SET salary= salary + ((salary * 10) / 100) WHERE dno in(SELECT dnumber  from DEPARTMENT where dname='Sales');
