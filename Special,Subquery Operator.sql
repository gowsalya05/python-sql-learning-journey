SPECIAL Operators:
1. IN operator:
It is a type of operator which is similar to = operator which means
It is also used to compare the values

--->But = operator compares only single value at time where as IN operator can compare multiple values at a time.

---> Whenever we use = operator it increases the number of conditions in the where clause but if use IN operator it will reduce the number of conditions in the where clause

-->IN operator works like a combination of = and OR operator whenever compare the multiple values from the same column.

---> To compare multiple values from the same column we use IN operator.

---> whenever we compare multiple values parenthesis are mandatory but whenever we compare single value parenthesis optional.

Syntax:
Column_Name IN (val1, val2,.......valN)

----waqtd name job and hiredate of an employees called smith, scott, ford, clark

select ename,job, hiredate

from emp

where ename in ('SMITH', 'SCOTT', 'FORD', 'CLARK');

SQL> ---waqtd name, salary, empno of an employees who earning the salary of 1250,1600,2450 and 3000 salaries

SQL> select ename, sal, empno

2 from emp

3 where sal in(1250,1600,2450,3000);

SQL> ---waqtd empno, ename, job, salary and deptno of an employees who are working as clerk and they must be either from deptno 10 or 20

SQL> select empno, ename, job, sal, deptno

2 from emp

3 where job='CLERK' and deptno in(10,20);

---waqtd name,job and hiredate of an employees who are hired in the year b 1981 and they must be either working as manager or salesman

select ename, job, hiredate

from emp

where hiredate>='01-JAN-1981' AND HIREDATE<='31-DEC-1981' AND JOB

IN('MANAGER', 'SALESMAN');

2. NOT IN:
It is a type of special operator which is similar to IN operator but instead of selecting the values it is used to reject the values present at RHS side of the condition.

---> To reject the multiple values from same column we use NOT IN operator.

syntax:
Column_Name NOT IN (val1, val2,.....valN)

---waqtd name, job, salary and hiredate of an employee except Miller, Turner

and KING

select ename,job, sal, hiredate

from emp

where ename not in ('MILLER', 'TURNER', 'KING');

3. BETWEEN operator:

It is a type of special operator which is used whenever we have a range of values. BETWEEN operator always works including the range of values.

--->In the syntax of between we should never interchange the range of values

-> In BETWEEN operator we should enclose the ranges within the parenthesis.

syntax:

Column_Name between lower_range and higher_range

--> according to the question if the question has words like greater than, less than, more than, between, before and after words then in that case increase lower range by 1 and decrement the higher range by 1.

---waqtd name, job and salary of an employees who are earning salary ranging from 1100 to 2950

select ENAME, JOB, SAL

from emp

where sal between 1100 and 2950;

---waqtd name, job, salary of an employees who are earning a salary between 950 to 1600

select ename, job,sal

from emp

where sal between 951 and 1599;

---waqtd name,job and hiredate of an employees who are hired after 1979 and before 1983 select ename, job, hiredate where hiredate BETWEEN '01-JAN-1980' and '31-DEC-1982';
