alter table EMPLOYEE drop foreign key EMPLOYEE_ibfk_2;

alter table EMPLOYEE
ADD foreign key (dno) references DEPARTMENT(dnumber) ON DELETE CASCADE;

alter table DEPARTMENT drop foreign key DEPARTMENT_ibfk_1;

Alter table DEPARTMENT
ADD foreign key (mgrssn) references EMPLOYEE(ssn) ON DELETE CASCADE;

alter table PROJECT drop foreign key PROJECT_ibfk_1;

Alter table PROJECT
ADD foreign key (dnum) references DEPARTMENT(dnumber) ON DELETE CASCADE;


alter table WORKS_ON drop foreign key fk_workson_project;

Alter table WORKS_ON
ADD foreign key (PNO) references PROJECT(PNUMBER) ON DELETE CASCADE;


alter table DEPT_LOCATIONS drop foreign key fk_deptlocations_department;

Alter table DEPT_LOCATIONS
ADD foreign key (dnumber) references DEPARTMENT(dnumber) ON DELETE CASCADE;


alter table DEPARTMENT drop foreign key DEPARTMENT_ibfk_1;

Alter table WORKS_ON
ADD foreign key (essn) references EMPLOYEE(ssn) ON DELETE CASCADE;


alter table DEPENDENT drop foreign key DEPENDENT_ibfk_1; 

Alter table DEPENDENT
ADD foreign key (essn) references EMPLOYEE(ssn) ON DELETE CASCADE;
alter table EMPLOYEE drop foreign key EMPLOYEE_ibfk_1;

Alter table EMPLOYEE
ADD foreign key (superssn) references EMPLOYEE(ssn) ON DELETE CASCADE;


alter table WORKS_ON drop foreign key WORKS_ON_ibfk_1;

Alter table WORKS_ON
ADD foreign key (essn) references EMPLOYEE(ssn) ON DELETE CASCADE;
