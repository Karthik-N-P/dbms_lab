--21) delete the dpt no 3 from database
alter table  DEPARTMENT drop foreign key DEPARTMENT_ibfk_1;                     
alter table  EMPLOYEE drop foreign key EMPLOYEE_ibfk_2;
alter table  DEPT_LOCATIONS drop foreign key fk_deptlocations_department;
alter table  WORKS_ON drop foreign key WORKS_ON_ibfk_1;
Delete from DEPARTMENT where dnumber=3;


-- 22 delete employees of research dpt
Delete from EMPLOYEE where dno in (SELECT dnumber from DEPARTMENT where dname='Research');
alter table  DEPENDENT drop foreign key DEPENDENT_ibfk_1;  
alter table  EMPLOYEE drop foreign key EMPLOYEE_ibfk_1;
alter table  WORKS_ON drop foreign key WORKS_ON_ibfk_1;
alter table  WORKS_ON drop foreign key fk_workson_employee;


-- 24) change the location dnum of projectno 10 to kerala and 5 
UPDATE PROJECT set plocation='kolkata', dnum=5 where PNUMBER=2;
SELECT * from PROJECT

--25) give all employee in the sales dpt a 10% hike
UPDATE EMPLOYEE SET salary= salary + ((salary * 10) / 100) WHERE dno in(SELECT dnumber  from DEPARTMENT where dname='Sales');


