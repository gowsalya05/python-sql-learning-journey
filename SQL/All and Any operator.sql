ALL and ANY operator:

These are type of special operator which are used along with the comparison operator

>ALL >ANY

<ALL <ANY

>=ALL >=ANY

<=ALL <=ANY

ALL:

It is a type of operator which is returns when the all values returned by subquery are true.

--->ALL operator works similar to AND operator.

ANY:

It is a type of special operator which returns true when any one of the value returned by the subquery is true.

---> ANY operator is similar to OR operator.

Whenever there is question with the ANY keyword then only we use ANY operator In all other cases we use ALL operator

K

---waqtd name and salary of an employees whose salary are greater than clerk

select ename,sal

from emp

where sal>all(select sal

from emp where job='CLERK');

SQL> ---waqtd name, job, salary of an employee who are earning the salary less than any of the employes working deptno 20

SQL> select ename, job, sal

2 from emp

3 where sal<any(select sal

4

5 where deptno=20);

from emp

---waqtd empno, ename, hiredate of an employees who are hired

after all the manager

select empno, ename, hiredate

from emp

where hiredate>all(select hiredate

from emp

where job='MANAGER');

---waqtd name, salary and hiredate of an employees who are earning the salary more than or equals to employees

working in deptno 20

select ename, sal, hiredate

from emp

where sal>=all(select sal

from emp

where deptno=20);
