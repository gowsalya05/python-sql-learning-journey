FUNCTION:

It is a set of instructions/block of code which performs a specific task are called as FUNCTION.

Types of Functions:

1.User Defined

2. Predefined Function.

1. User Defined Function:

These are the functions which are defined by the users based on there requirement.

2. Predefined Function:

These are the functions which are already present in the software by built.

--->These are the functions which are defined by the developer of a software.

Types of Predefined Functions are:

1. Single Row Function

2. Multi Row Function

1. SINGLE ROW FUNCTION(SRF)

These are the types of predefined function which accepts multiple inputs and after execution provides multiple outputs.

---> In single row function for every input there is respective output

->Single row function always executes Row By Row

--->In Single Row Function Number of inputs are equals to number of outputs.

--->We can pass single row function in the where clause because where clause also executes Row by Row

--->Along with the single row function we can pass other Column_Name/expression

one of the example for single row function is LENGTH().

1. LENGTH():

It is a single row function which is used to return number characters/digits in the given values.

---> It is used to return the length of values.

syntax:

length(value)

---waqtd name of an employees along with that display number character that are present on every employees name.

select ename, length(ename)

from emp;

---waqtd names of an employees who are having exactly 6 characters in there name select ename

from emp

where length(ename) = 6;

2. MULTI ROW FUNCTION:

These are the predefined function which accept multiple inputs and after execution provides exactly one value as an output.

--> In Multi Row Function it Accepts N number of inputs and after execution provides only one output

Multi Row Function executes in a group wise.

In Multi Row Function Number of inputs are not equals to number of outputs

-->We can not pass multi Row Functions in where clause

-->Along with the Multi Row Function we can not pass any other Column_Name/Expression

Multi Row Functions are also called Aggregate Function of a Group Function.

Types of Multi Row Functions are:

1. MAX()

2. MIN()

3. SUM()

4. AVG()

5. COUNT()

MULTI ROW FUNCTIONS:

1. MAX():

It is a type of function which is used to find the maximum value from the given

column.

2. MIN():

It is used to obtain the minimum value from the given column.

3. SUM():

It is used to obtain summation of all the values from the given column.

4. AVG():

It is used to obtain the average of all the values from the given column.

5. COUNT():

It is used to obtain number of records from the given table or column.

---WAQTD MAXIMUM SALARY FROM EMP TABLE.

select max(sal)

from emp;

---waqtd total salary required to pay for all the employees

select sum(sal)

from emp;

---waqtd average of salary required to pay for all the employees

select avg(sal)

from emp;

---waqtd first hiredate from emp table

select min(hiredate)

from emp;

---waqtd number of employees who are getting the commission

select count(comm)

from emp;

GROUP BY clause:

It is a type of clause which is used to group the records.

syntax:

select group_function/Group_by_expression

from Table_Name

[where <filter_condition>]

Group by column_name/Expression;

Order of writing the query is:

1. Select

2. From

3. Where

4. Group by

Order of executing the query is

1. From

row by row

2. Where

3. Group by

4. Select

---waqtd number of employees on each dept.

select count(*), deptno

from emp

group by deptno;

NOTE:

Group by clause is used to group the records

-> Group by clause can be written either after the from clause or where clause

->Group by clause executes either after the from clause or where clause depends on the presence of where clause

-> Always Group by clause executes Row By Row

After the Execution of Group by we get Groups as an output

If any clause that executes after Group by it always executes Group by Group order

Group By Expression:

A Column_Name /Expression which is a part of group by clause the same

column_name/Expression if we use it in the select clause/Having clause it is called as Group By Expression.

---waqtd sum of salary on each dept from emp table

select sum(sal), deptno

from emp

group by deptno;

---waqtd last hiredate on each job except those employees who are

working deptno 10

select max(hiredate), job

from emp

where deptno!=10

group by job;

---waqtd sum of salary on each job except those employees whose sum of salary is greater than 6000

according to the question we can not pass the condition using multi row function in where so we use another clause called HAVING.

HAVING CLAUSE:

It is a type of clause which is used to filter the groups.

--> Having clause is dependent on Group by clause.

syntax:

select group_function/group by expression

from Table_Name

[where <filter condition>]

Group by Column_Name

Having <group_filter_condition>;

GROUP FILTER CONDITION:

It is a condition which is used to filter the groups.

---> these condition must be written either using group function/group by expression based condition.

syntax:

group_function operator value

or

group_by_expression operator value

---waqtd sum of salary on each job except those employees whose sum of salary is greater than or equals to 6000

select sum(sal),job

from emp

group by job

having sum(sal) >=6000;

NOTE:

--> Having clause is used to filter the groups

--->Having clause must be written after the Group by clause

--->Having clause is dependent on Group by clause

--->On having clause we pass Group filter condition

--> Having clause executes after the execution of Group by clause

--->Always Having clause executes Group By Group

---waqtd number of employees on each job where there must at most 3 employees on each job

select count(*),job

from emp

group by job

having count(*)<=3;

ORDER BY clause:

It is a type of clause which is used to arrange the records in a particular order either it might be in Ascending /descending order.

---> By default order by clause arranges the records in Ascending order

here ASC-Ascending and DESC- descending

syntax:

select */Column_Name

from Table Name

[where <filter_condition>]

[group by Column_Name

having <group filter condition>]

Order by Column_Name [ASC]/DESC;

order of writing the query is:

1. select

2. from

3. where

4. group by

5. having

6. Order by

Order of executing the query is:

1. from

2. where

3. group by

4. having

5. select

6. Order by

Order by clause must be written as a last statement in the query

--->Order by clause always executes after the execution of select statement

---WAQTD NAME OF AN EMPLOYEES IN A PARTICULAR ORDER.

select ename

from emp

order by ename

---waqtd job and salary in ascending order

select job,sal

from emp

order by job,sal;

SQL> ---waqtd job and salary of an employees where job must be in ascending order and sal must in descending order

SQL> select job,sal

2 from emp

3 order by job, sal desc;

---waqtd name, and salary of an employees whose salary are greater than

miller

select ename,sal

from emp

where sal>'MILLER'; --->WRONG query

this query can be solved using subquery.

