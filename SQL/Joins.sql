JOINS:

It is a process of retrieving the records from two different table simultaneously are called as JOINS.

TYPES of JOINS are:

1. Cross join/Cartesian Join

2. Inner join/Equi Join

3. Natural join

4. Outer join

i. Left Outer Join

ii. Right Outer Join

iii. Full Outer Join

5. Self Join

CROSS JOIN/CARTESIAN JOIN:

It is a type of join where it retrieves the records in a such a way that where all the records of one table will be combined with all the records of another table are called as Cross join/Cartesian Join.

Syntax:

ANSI:

select */Column_Name

from table_namel cross join table_name2;

Oracle:

select */Column_Name from table_name1, table_name2;

---WAQTD DETAILS OF EMPLOYEES AND DEPARTMENT TABLE.

SELECT *

FROM EMP CROSS JOIN DEPT;

SELECT *

FROM EMP, DEPT;

---waqtd name and dname of an employees

select ename, dname

from emp cross join dept;

2. INNER JOIN/Equi Join:

It is a type of join which is used to the records of two different table in a such way it shows only the matching.

---> To perform the inner join there must exists a relation between the tables

SYNTAX:

ANSI:

select */Column_Name

from table_namel Inner join table_name2

on table_name1.common_column=table_name2.common_column;

ORACLE:

select */Column_Name

from table_namel, table_name2

where table_namel.common_column=table_name2.common_column;

---WAQTD DETAILS OF EMPLOYEES AND DEPARTMENT TABLE

select *

from emp inner join dept on emp.deptno=dept.deptno;

or

select *

from emp.dept

where emp.deptno=dept.deptno;

---waqtd name of an employees along with that display there respective dept name

select ename,dname

from emp inner join dept

on emp.deptno=dept.deptno;

---waqtd empno, ename, salary and location of an employees

select empno, ename, sal, loc

from emp inner join dept

on emp.deptno=dept.deptno;

waqtd ename,job, deptno and dname of an employees

select ename,job, emp.deptno, dname

from emp inner join dept

on emp.deptno=dept.deptno;

SQL> ---waqtd empno, ename,job, dname and location of an employees at which employees are earning mo than 1500 salary

SQL> select empno, ename,job, dname, loc

 from emp inner join dept

 on emp.deptno=dept.deptno and sal>1500;

---waqtd empno, ename, salary and dname of an employees who are hired after 1981 and

they must be from deptno 20

select empno, ename, sal, dname

from emp inner join dept

on emp.deptno=dept.deptno

where hiredate>'31-dec-1981' and emp.deptno=20;

---wagtd dname of CLARK

select dname

from emp inner join dept

on emp.deptno=dept.deptno

where ename='CLARK';

---WAQTD EMPLOYEES NAME AND LOCATION OF AN EMPLOYEES WHO

ARE HIRED AFTER THE ALLEN

SELECT ENAME.LOC

FROM EMP INNER JOIN DEPT

ON EMP.DEPTNO-DEPT.DEPTNO

WHERE HIREDATE>(SELECT HIREDATE

FROM EMP

WHERE ENAME='ALLEN');

3. NATURAL JOIN:

It is a type of join which is used to retrieve the matching records if there exists a relation between the table and it also retrieve the mismatching records between the table if there is no relationship between them.

---> Natural join works like inner join as well as Cross join depends up on the relationship exists between the tables.

Syntax:

ANSI:

select *

from table_namel Natural join table_name2;

---waqtd details of employees and department table

select *

from emp natural join dept;--->it returns only the matching

---waqtd retrieve the details of department and salagrade table

select *

from dept natural join salgrade;---> it returns only the mismatching

4. OUTER JOIN:

It is a type of join which is used to return the unmatching records along with the

matching records.

Types of Outer join:

1. LEFT Outer Join

2. Right Outer Join

3. Full Outer Join

1. LEFT OUTER JOIN:

It is a type of outer join which is used to return the unmatching records from left table and matching records from both the tables.

---> Left outer join returns all the records from left table and only the matching records from the right table

syntax:

ANSI:

select */Column_Name

from table name1 Left [outer] join table name2

on table_namel.common_column=table_name2.common_column;

oracle:

select */Column_Name

from table_name1, table_name2

where table_name1.common_column=table_name2.common_column(+);

----WAQTD details of employees and department along with that display the employees who are not assigned any dept.

select *

from emp left join dept

on emp.deptno=dept.deptno;

select *

from emp,dept

where emp.deptno=dept.deptno(+);

2. RIGHT OUTER JOIN:

It is a type of outer join which is used to return unmatching record from the right table and matching records from the tables are called as Right Outer Join.

-->It is used to return all the records from the right table and matching records only from left table.

syntax:

ANSI:

select */column_name

from table_namel right [outer) join table_name2 on table_namel.common_column=table_name2.common_column;

Oracle:

select */colum name

from table_namel, table_name2

where table_name1.common_column(+)=table_name2.common_column;

---WAQTD DETAILS OF EMPLOYEES AND DEPARTMENT DETAILS ALONG WITH THAT DISPLAY THOSE DEPARTMENT AT WHICH NO EMPLOYEES ARE WORKING.

SELECT *

FROM EMP RIGHT JOIN DEPT

ON EMP.DEPTNO DEPT.DEPTNO;

OR

SELECT *

FROM EMP, DEPT

WHERE EMP.DEPTNO(+)=DEPT.DEPTNO;

3. FULL OUTER JOIN:

it is a type of outer join which is used to return the matching and unmatching records from both right and left table.

syntax:

ANSI:

select */Column_Name

from table_namel Full join table_name2

on table_name1.common_column=table_name2.common_column;

---waqtd details of employees and department table along with that display the employees who are not assigned to any department then display those department at which no employees are working.

select

from emp full join dept

on emp.deptno=dept.deptno;

---WAQTD NAMES OF AN EMPLOYEE AND MANAGER NAME OF AN EMPLOYEES

according to the given question we need to retrieve the records of the same table simultaneously so we need to join two same tables that is using SELF JOIN.

5.SELF JOIN:

It is a type of join which is used to join two same tables in order to retrieve the records of the same table simultaneously are called as SELF JOIN.

syntax:

ANSI:

Oracle:

select */Column Name

from Table Name TI join Table_Name T2

on Tl.common_column=T2.common_column;

select */Column_Name

from Table Name T1, Table Name T2

where Tl.common_column=T2.common_column;

---waqtd names of an employees and name of managers

select e.ename,m.ename

from emp e join emp m

on e.mgr=m.empno;

---waqtd name, job and salary of an employees along with that display the managers name and there job.

select e.ename,e.job,e.sal,m.ename,m.job

from emp e join emp m

on e.mgr=m.empno;

---waqtd name, and salary of an employees along with that display name of managers and their hiredate at which employees are working as a clerk

select e.ename,e.sal,m.ename,m.hiredate

from emp e join emp m

on e.mgr=m.empno

where e.job='CLERK';

SQL> ---waqtd ename, managers name and along with that display

there respective salary at which employees salary is greater than the managers salary

SQL> select e.ename, e.sal, m.ename,m.sal

2 from emp e join emp m

3 on e.mgr=m.empno

4 where e.sal>m.sal;

---waqtd details of an employees along with that there managers name

and deptno at which employees and managers are from different departments

select e.*,m.ename,m.deptno

from emp e join emp m

on e.mgr=m.empno

where e.deptno!=m.deptno;
