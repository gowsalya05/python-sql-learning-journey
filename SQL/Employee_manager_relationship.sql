CASES OF EMPLOYEE MANAGER RELATIONSHIP

CASE1: IDENTIFYING THE MANAGER

CASE2: IDENTIFYING THE EMPLOYEE
----------------------------------
CASE1: IDENTIFYING THE MANAGER

---WAQTD MANAGER NAME OF ASHU

SELECT ENAME FROM EMP 

WHERE EMPNO=(SELECT MGR FROM EMP

WHERE ENAME='ASHU');---> KAVYA

CASE 2: Identifying the employees

---waqtd name of an employees reporting to KAVYA

Select ename from emp

where mgr in(select empno from emp

where ename='KAVYA');

---WAQTD MANAGER NAME OF ALLEN.

select ename from emp

where empno=(select mgr from emp

where ename='ALLEN');

---waqtd name, salary hiredate of CLARK's manager

select ename,sal, hiredate from emp

where empno=(select mgr from emp

where ename='CLARK');

---waqtd dname of smith's manager

select dname from dept

where deptno in(Select deptno from emp

where empno=(select mgr from emp

where ename='SMITH'));

---waqtd manager details of an employee who are working as r

select * from emp

where empno in(select mgr from emp

where job= 'MANAGER');

---WAQTD MANAGER'S MANAGER NAME, AND SALARY OF A

SELECT ENAME, SAL FROM EMP

WHERE EMPNO=(SELECT MGR FROM EMP

WHERE EMPNO=(SELECT MGR FROM EMP

WHERE ENAME='ADAMS'));

---waqtd location of an employees who are reporting the manager called CLARK

select loc from dept

where deptno in(select deptno

from emp where mgr in(select empno from emp

where ename='CLARK'));

---waqtd details of an employees who are reporting the same manager as ALLEN

select * from emp

where mgr=(select mgr from emp

where ename='ALLEN');
