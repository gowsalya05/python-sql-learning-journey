SUBQUERY:

A query which is written inside another query/A query within another query is known as subquery.

-> In subquery there are two queries one is inner query and outer query and inner query is also called as subquery

--> Always inner query executes first by taking the input from the user

-->The inner query executes and returns the output

The output of the inner query is given as an input to the outer query

--> The outer query executes by taking the input from the inner query and provides the final

result

--> From this entire execution we understood that outer query is dependent on inner query.

When to use Subquery?

There are two case to use subquery

case 1: Whenever there is unknown value in the question we use subquery

case2: Whenever data to be selected and condition should be applied are on two different table

CASE 1: WHENEVER THERE IS A UNKNOWN VALUE IN THE QUESTION.

---WAQTD NAME and salary of an employees whose salary is greater than the miller

select ename,sal

from emp

where sal>(select sal

from emp

where ename='MILLER');

---waqtd name, empno, salary and hiredate of an employees who are hired before the CLARK

select ename,empno, sal, hiredate

from emp

where hiredate<(select hiredate

from emp

where ename='CLARK');

--waqtd name,job and salary of an employees who are working in the same job as ALLEN

select ename, job, sal

from emp

where job = (select job

from emp

where ename='ALLEN');

---waqtd empno, ename, job and deptno of an employees who are hired after 1981 and must be from the same dept as jones

select empno, ename,job, deptno

from emp

where hiredate>'31-dec-1981' and deptno=(select deptno from emp

where ename='JONES');

---WAQTD NAME, SAL, HIREDATE DEPTNO AND JOB OF AN EMPLOYEES WHO GETTING A SALARY MORE THAN ALLEN AND MUST BE HIRED AFTER SMITH

SELECT ENAME, SAL, HIREDATE, DEPTNO, JOB

FROM EMP

WHERE SAL>(SELECT SAL

FROM EMP

WHERE ENAME='ALLEN') AND HIREDATE>(SELECT HIREDATE FROM EMP

WHERE ENAME='SMITH');

CASE 2:

Whenever data to be selected and condition should be executed are on two different table.

---WAQTD DNAME OF SCOTT

select dname

from dept

where deptno=(select deptno from emp where ename = 'SCOTT');

---waqtd name and job of an employees who are working SALES dept

select ename,job

from emp

where deptno=(select deptno from dept where dname='SALES');

--waqtd dept details of an employees called KING

select *

from dept

where deptno = (select deptno from emp where ename='KING');

---waqtd name, sal, hiredate and job of an employees who are working in DALL

Location

select ename, sal, hiredate,job

from emp

where deptno=(select deptno from dept where loc='DALLAS');

subquery with the combination of case 1 and case 2:

----waqtd empno, ename of an employee whose salary less than blake and must be from Research dept

select empno, ename

from emp

where sal<(select sal

from emp

where ename='BLAKE') and deptno=(select deptno

from dept

where dname='RESEARCH');

---waqtd details of an employees who are hired after TURNER and must be from CHICAGO location.

select *

from emp

where hiredate>(select hiredate

from emp

where ename='TURNER') and deptno=(select deptno

from dept

where loc='CHICAGO');

---waqtd name and hiredate of an employee who hired first.

select ename, hiredate

from emp

where hiredate=(select min(hiredate) from emp);

---waqtd name and job of an employees who hired last

select ename,job

from emp

where hiredate=(select max(hiredate) from emp);

TYPES of Subquery:

1. Single Row subquery

2. Multi Row subquery.

1. Single Row Subquery:

It is a type of subquery which returns exactly one value/single value as an output then such type of subqueries are called as Single Row Subquery.

2. Multi Row Subquery:

It is a type of subquery which returns more than one value as an output then such type of subquery are called as Single Row subquery.
