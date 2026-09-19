---WAQTD name and salary of an employees

select ename, sal

from emp;

----waqtd empno, ename, designation and joining date of an employees

select empno, ename, job, hiredate

from emp;

---waqtd name, salary job and deptno of an employees

select ename, sal, job, deptno

from emp;

---waqtd details of all the employees

to solve this query instead of mentioning all the Column_Name we can use an other argument called *(Asterisks).

*(Asterisks):
It is an argument which is used to select records of the all the column by default.
->To display the entire table records we use * as an argument.

---> Along with the *(asterisks) we can not pass any other column_name/Expression. It has to be used alone in the select clause.

select *

from emp;

---waqtd details of department table

select *

from dept;

---waqtd different salaries given to the employees

to display the unique salaries we use another clause/argument called as DISTINCT.

DISTINCT:

distinct different/duplicate

---->It is a type of clause which is used to remove the duplicate rows from the specified column.
---->Distinct clause must be used as a first argument in the select statement.
---->To the distinct clause we can pass multiple Column_Name.

----waqtd different salaries given to the employees.

select distinct sal

from emp;

---waqtd unique jobs from employees

select distinct job

from emp;

---waqtd different departments that are present on emp table

select distinct deptno

from emp;

---waqtd different salary and job that present on emp table

select distinct sal,job

from emp;

---waqtd different departments that are present on emp table

select distinct deptno

from emp;

SYNTAX of Projection:

SELECT */DISTINCT COLUMN_NAME/Expression [alias] from Table_Name;

EXPRESSION:

It is a combination of operator and operands which gives us the result are known as Expression.

2+comm ---> It is an expression.

What is Operator?

It is a symbol which performs a specific operation on given operands.

what are Operands?

These are the values which acts upon operator to perform a specific operation.

----waqtd annual salary from emp table

select sal*12

from emp;

---waqtd name job and salary with the bonus of 500 rs for all the employees.

select ename, job, sal+500

from emp;

---waqtd empno, sal and salary with the fine 200 rs

select empno, sal, sal-200

from emp;

ALIAS:

It is an alternate name given to the columns, expression an even for table names.

--->Alias name is optional to be used.

---> Alias name can be assigned with or without as key word.

--->whenever we give a alias name and it has space either replace the space with underscore/ enclose such alias name within double quotes.

select sal*12 as ANNUALSALARY from emp;

select sal*12 ANNUALSALARY from emp;

select sal*12 "ANNUAL SALARY" from emp;

select sal*12 ANNUAL SALARY from emp;

select ename Emp_names from emp;

select ename,sal,job, sal+sal*0.25 HIKE FROM EMP;
