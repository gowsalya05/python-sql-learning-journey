SELECTION:
It is a type of DQL statement which is used to retrieve the records from the table by selecting both rows and columns.

----waqtd job of smith from emp table

this query can not be solved just using the concept of projection so we need to the concept of selection.

syntax:

SELECT */Distinct column_name/Expression [alias]

FROM Table_Name

WHERE <filter Condition>;

WHERE: 
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

---waqtd name,job, salary of an employees called MILLER.

select ename, job,sal

from emp

where ename='MILLER';

---waqtd name and salary of an employee whose salary is greater than 1200

select ename,sal

from emp

where sal>1200;

---waqtd ename,job and hiredate of an employees who are hired after 1980.

select ename, job, hiredate

from emp

where hiredate> '31-DEC-1980';

or

select ename,job, hiredate

from emp

where hiredate>='01-JAN-1981';

----waqtd name, salary and hiredate of an employees who are hired before 1982

select ename, sal, hiredate

from emp

where hiredate<'01-jan-1982';

or

select ename, sal, hiredate

from emp

where hiredate<='31-dec-1981';

---waqtd name, job and salary of an employees who are working as analyst

select ename,job,sal

from emp

where job='ANALYST';

---waqtd details of an employees who are getting the salary greater than or equals to 1600

select *

from emp

where sal>=1600;
