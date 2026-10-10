DQL(Data Query Language):

It is a type of SQL statement which is used to retrieve the records of a existing table.

Types of DQL statements are:

1. SELECT

2. PROJECTION

3. SELECTION

4. JOINS

1. SELECT:

It is a type of DQL statement which is used to select the records from the table and display it on the screen.

2. PROJECTION:

It is a type of DQL statement which is used to retrieve the records by selecting only the columns of a table.

3. SELECTION:
It is a type of DQL statement which is used to retrieve the records by selecting both rows and columns of a table.

4. JOINS:

It is a type of DQL statement which is used to retrieve the records by selecting both rows and columns of a table.

It is a type of DQL statement which is used to retrieve the records from multiple tables simultaneously.

PROJECTION:

It is a type of DQL statement which is used to retrieve the records from the table by selecting only columns.

SYNTAX:

Select */Distinct column_name/Expression [alias]

from Table_Name;

clause: These are the keywords which has a specific functionality to perform.

FROM: It is a type clause which is used search the mentioned table on database.

Table Name:

It is an argument that must be passed on from clause.

----> It is a name of table from where the records gets retrieved.

SELECT:

It is a type of clause which is used to search for the specified Column_Name in the o/p of from clause. --->If there exists the Column_Name then it selects the records of that column and displays it as an output.

EXECUTION of PROJECTION:

In projection always From clause executes first

The job of from clause is used to search for the mentioned Table_Name on the data base.

If data base has Table Name it will be kept under execution if there is no table present it throws and error saying that table or view doesn't exists.

After the execution of From clause select clause will execute

--->The job of select is used to search for the mentioned Column_Name on the output of from clause.

if there is a Column_Name it select the records of that column and display it as an output it there is no column it throws an error saying that invalid identifier error.

--waqtd salary of all the employees

select sal

from emp;

---waqtd designation of an employees

select job

from emp;

---WAQTD name and salary of an employees

select ename, sal

from emp;

----waqtd empno, ename, designation and joining date of an employees

select empno, ename,job, hiredate

from emp;

---waqtd name, salary job and deptno of an employees

select ename, sal, job, deptno

from emp;

---waqtd details of all the employees

to solve this query instead of mentioning all the Column_Name we can use an other argument called *(Asterisks).

*(Asterisks):

It is an argument which is used to select records of the all the column by default.

--->To display the entire table records we use * as an argument.

---> Along with the *(asterisks) we can not pass any other column_name/Expression. It has to be used alone in the select clause.

select *

from emp;

---waqtd details of department table

select *

from dept;

---waqtd different salaries given to the employees

to display the unique salaries we use another clause /argument called as DISTINCT.

DISTINCT:

distinct different/duplicate

---->It is a type of clause which is used to remove the duplicate rows from the specified column.

--->Distinct clause must be used as a first argument in the select statement.

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

select distinct sal, job

from emp;

---waqtd different departments that are present on emp table

select distinct deptno

from emp;

SE fr

S

f

se fr

SYNTAX of Projection:

SELECT */DISTINCT COLUMN_NAME/Expression [alias] from Table Name;

EXPRESSION:

It is a combination of operator and operands which gives us the result are known as Expression.

2+comm ---> It is an expression.

33/ ---> it is not an expression

SELECTION:

It is a type of DQL statement which is used to retrieve the records from the table by selecting both rows and columns.

----waqtd job of smith from emp table

this query can not be solved just using the concept of projection so we need to the concept of selection.

syntax:

SELECT */Distinct column_name/Expression [alias]

FROM Table Name

WHERE <filter Condition>;

Where:

It is a type of clause which is used to filter the records based on filter condition.

filter condition:

It is condition used to filter the records if the condition match it selects the records or else it rejects.

syntax:

Column_Name operator values.

ORDER OF WRITING THE QUERY IS:

1. select

2. from

3. where

ORDER of executing the query is:

1. From

2. Where

3. Select

NOTE ON WHERE:

---> Where clause is used to filter the records

---> On where clause we pass filter condition based on the condition where clause select

---> Always Where clause executes after the from clause

-> To filter the records always where clause executes Row by Row.

-->If the condition is matching where clause selects the records or else it rejects it.

-->we can [ass multiple filter conditions in where clause with the help of logical operator
