A subquery inside another subquery are called as Nested subquery.

--> We can nest up to 255 subqueries.

---waqtd name, sal, hiredate and deptno along with job where employees are hired after any of

the employee who are working in same dept as JONES

select ename, sal, hiredate, deptno,job

from emp

where hiredate>any(select hiredate

from emp

where deptno=(select deptno

from emp

where ename='JONES'));

SQL> ---waqtd ename,job and employees who getting the salary more than employees working in

Chicago location.

SQL> select ename,job

2 from emp

3 where sal>all(select sal

4 from emp

5 where deptno=(select deptno

6 from dept

7 where loc='CHICAGO'));

---waqtd first minimum salary

select min(sal)

from emp;--->800

---waqtd second minimum salary

select min(sal)

from emp 

where sal>(select min(sal) from emp);

---waqtd 3rd maximum salary

select max(sal) from emp

where sal< (select max(sal) from emp)); --->3000

to find the first max ---> 0 subquery

to find the 2nd max ---> 1 subquery

to find the 3rd max --->2 subquery

to find the 100th max --->99 subquery

to find the nth max ---->n-1 subquery

to find the 256th max ---->255 subquery

to find the 257th max ----> impossible

---waqtd 3rd minimum salary

select min(sal) from emp 

where sal>(select min(sal) from emp 
  
where sal>(select min(sal) from emp));--->1500

to find 1st min sal--->0 subquery

to find 2nd min sal--->1 subquery

to find 3rd min sal --->2 subquery

to find the Nth min sal--->N-1 subquery

to find the 257th min sal-->impossible.

---waqtd 4th maximum salary from emp table.

select max(sal) from emp where sal<(select max(sal)

from emp where sal< (select max(sal) from emp where sal<(select max(sal) from emp)));

---waqtd name of an employees who is earning 2nd maximum salary

select ename

from emp

where sal=(select max(sal) from emp

where sal<(select max(sal) from emp));

---waqtd 4th minimum salaries emp name, sal and deptno

select ename, sal, deptno from emp

where sal=(select min(sal)

from emp where sal> (select min(sal) from emp where sal>(select min(sal) from emp

where sal>(select min(sal) from emp))));
