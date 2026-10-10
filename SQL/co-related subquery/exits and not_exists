EXISTS and NOT EXISTS:

These are the subquery operators.

EXISTS operator :

It is a type of subquery unary operator

-->Exists operator returns true the values returned by the subquery a returns false for the NULL that is returned by the subquery.

NOT EXISTS operator:

It is a type subquery unary operator

--> Not Exists operator returns true for the Null that is returned by th subquery and it returns false for the value returned by the subquery.

---waqtd dname of an employee at which employees are working.

select d.dname

from dept d

10,20,30,null

where EXISTS(select e.deptno

from emp e

where d.deptno=e.deptno);

---waqtd dname of a department table at which no employees

are working.

select d.dname

from dept d

where not exists(select e.deptno

from emp e

where d.deptno=e.deptno);

--waqtd name,job and deptno of an employees at which employees

working in either of the dept

select ename,job,deptno

from emp e

where exists(select d.deptno

from dept d

where e.deptno=d.deptno);

---waqtd name job and salary of an employees who are earning the salary more than the average salary of there own dept

select ename, job, sal

from emp e

where sal> (select avg(sal)

from emp where e.deptno=deptno);

Finding Nth Maximum and Nth Minimum salary using Co-related subquery.

FINDING Nth maximum salary

syntax:

from emp el

select el.sal where (select count(distinct e2.sal) from emp e2 where e1.sal<e2.sal) in (n-1);

--WAQTD 5TH MAXIMUM SALARY FROM EMP TABLE.

select e1.sal

from emp el

where (select count(distinct e2.sal) from emp e2 where e1.sal<e2.sal) in (5-1);

---waqtd name and salary of an employee who are earning 7th maximum salary.

select ename,sal

from emp el

where (select count(distinct e2.sal) from emp e2 where el.sal<e2.sal) in 7-1;

---waqtd name and salary of an employees who are earning 9th and 10 maximum salary

select ename, sal

from emp el

where (select count(distinct e2.sal) from emp e2 where e1.sal<e2.sal) in(9-1,10-1);

---waqtd dname of an employee who is earning 6th maximum salary

select dname

from emp el inner join dept d on e1.deptno=d.deptno where (select count(distinct e2.sal) from emp e2 where e1.sal<e2.sal) in 6-1;

FINDING the NTH MINIMUM salary:

syntax:

select el.sal from emp el where (select count(distinct e2.sal) from emp e2 where e1.sal>e2.sal) in N-1;

---waqtd 10th minimum salary from emp table

select e1.sal

from emp el where (select count(distinct e2.sal) from emp e2 where e1.sal>e2.sal) in 10-1;

---waqtd 3,5,7th minimum salary from emp table

select sal

from emp e1 where (select count(distinct e2.sal) from emp e2 where e1.sal>e2.sal) in(3-1,5-1,7-1);

---waqtd name, salary and dname of an employee who is earning 4th minimum salary

select ename, sal, dname

from emp el inner join dept d

on e1.deptno=d.deptno

where(select count(distinct e2.sal)

from emp e2

where e1.sal>e2.sal) in 4-1;
