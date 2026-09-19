OPERATORS: It is a symbol which performs a specific task are called as Operators.

Types of operators are:

1. Arithmetic operator(+,-,*,/)
2. Relational operators/comparison operator(>,<, <=, >=,!=,<>, =)
3. Concatenation operator(||)
4. Logical operator(AND, OR, NOT)
5. Special Operators are:

1. IN

2. NOT IN

3. BETWEEN

4. NOT BETWEEN

5. IS

6. IS NOT

7. LIKE

8. NOT LIKE

6. Subquery operator(ALL, ANY, EXISTS and NOT EXISTS)

3. CONACTENATION operator:
It is a type of operator which is used merge, combine/join two values.
syntax:
val1|| val2

---waqtd 'Mr.' words for every employees name

select 'Mr. ename

from emp;

or

select 'Mr.' 'lename

from emp;

---wagt concatenate name and salary column with some space

select ename||''|sal

from emp;

2 from emp;

4. LOGICAL operators:
These are the operator which works along with the conditions these operator works with the two values that are true and
Types of logical operators are: 1. AND

2. OR

3. NOT

1. AND:
It is a type of logical operator which returns true when all the passed conditions are true and it returns false when any of the condition is false.
syntax:
condition1 AND condition2

---waqtd empno, ename, salary an job of an employees who are working as clerk and

there salary must less than 1500

select empno, ename,sal,job

from emp

where job='CLERK' and sal<1500;

2.OR:
It is a type of logical operator which selects the records when any one of the condition is true and it returns false when all the conditions are false.
syntax:
condition1 Or condition2

----waqtd name job and salary of an employees who are working as salesman or they must earn the salary more than 1200

select ename,job, sal

from emp

where job='SALESMAN' or sal>1200;

---waqtd name, deptno and job of an employees who are working as clerk or must be from deptno 20

select ename, deptno,job

from emp

where job='CLERK' or deptno=20;

---WAQTD NAME AND JOB OF AN EMPLOYEES WHO ARE AS MANAGER AND ANALYST

SELECT ENAME, JOB

FROM EMP

WHERE JOB='MANAGER' OR JOB='ANALYST';

---WAQTD DETAILS OF ALLEN, SMITH, SCOTT AND MILLER

SELECT *

from emp

where ename='ALLEN' or ename='SMITH' or ename='SCOTT' or ename='MILLER';

3. NOT operator:
It is a type of logical unary operator which is used to negate the given input. if the input is true it returns as false, if it is false it returns as true.
syntax:
NOT condition

---waqtd name and job of an employees except salesman

select ename job

from emp

where not job='SALESMAN';
