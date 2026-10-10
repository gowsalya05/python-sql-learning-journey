OPERATORS:

It is a symbol which performs a specific task are called as Operators.

Types of operators are:

1. Arithmetic operator(+,-,*,/)

2. Relational operators/comparison operator(>,<,<=, >=,=,<>, =)

3. Concatenation operator())

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

syntax.

vali|| val2

---waqtd Mr. words for every employees name

select 'Mr. ename

from emp;

or

select 'Mr. ||''|lename

from emp;

---waqt concatenate name and salary column with some space

select ename || sal

from emp;

SQL> ---waqt greet every employees by calling there name as given example is 'Good evening with

there name

SQL> select 'GOOD EVENING 'lename

2 from emp;

4. LOGICAL operators:

false. These are the operator which works along with the conditions.these operator works with the two values that are true and

Types of logical operators are:

1. AND

2. OR

3. NOT

1. AND:

It is a type of logical operator which returns true when all the passed conditions are true and it returns false

when any of the condition is false.

syntax:

condition! AND condition2

---waqtd empno, ename, salary an job of an employees who are working as clerk and

there salary must less than 1500

select empno, ename, sal, job

from emp

where job= 'CLERK' and sal<1500;

SQL> ---waqtd name, hiredate and deptno of an employee at which employees are hired after 1981 and t

he employees must be working deptno 20

SQL> select ename, hiredate, deptno

2 from emp

3 where hiredate> '31-dec-1981' and deptno=20;

---waqtd name and salary of an employees whose salary is greater 1200 and less than 2000

select ename,sal

from emp

where sal>1200 and sal<2000;

---waqtd name and hiredate of an employees who are hired after 1981 and before 1983

select ename, hiredate

from emp

where hiredate>'31-dec-1981' and hiredate <'01-jan-1983';

---waqtd name,job and salary of an employees who are working as manager and there salary

must greater than 2000 and less than 2900

select ename, job, sal

from emp

where job='MANAGER' and sal>2000 and sal<2900;

---waqtd name and hiredate of an employees who are hired in the year 1981

select ename, hiredate

from emp

where hiredate>='01-jan-1981' and hiredate<='31-dec-1981';

or

select ename, hiredate

from emp

where hiredate>'31-dec-1980' and hiredate<'01-jan-1982';

---waqtd name, empno, salary hiredate and deptno of an employees who are hired in the year 1981 and they must earn the salary more than 1500 and less than 3000

select ename,empno, sal, hiredate, deptno

from emp

where hiredate>'31-dec-1980' and hiredate<'01-jan-1982' and sal>1500 and sal<3000;

2. OR operator:

It is a type of logical operator which selects the records when any one of the condition is true and it returns false when all the conditions are false.

syntax:

condition? Or condition2

----waqtd name job and salary of an employees who are working as salesman or they must earn the salary more than 1200

select ename job, sal

from emp

where job='SALESMAN' or sal>1200;

---waqtd name, deptno and job of an employees who are working as clerk or must be from deptno 20

select ename, deptno,job

from emp

where job='CLERK' or deptno=20;

3. NOT operator:

It is a type of logical unary operator which is used to negate the given input. if the input is true it returns as false, if it is false it returns as true.

syntax:

NOT condition

---waqtd name and job of an employees except salesman

select ename job

from emp

where not job='SALESMAN';
