JOINS:

It is a process of retrieving the records from two different table simultaneously are called as JOINS.

TYPES of JOINS are:

1. Cross join/Cartesian Join

2. Inner join/Equi Join

3. Natural join

4. Outer join

i. Left Outer Join

ii. Right Outer Join

iii. Full Outer Join

5. Self Join

CROSS JOIN/CARTESIAN JOIN:

It is a type of join where it retrieves the records in a such a way that where all the records of one table will be combined with all the records of another table are called as Cross join/Cartesian Join.

Syntax:

ANSI:

select */Column_Name

from table_namel cross join table_name2;

Oracle:

select */Column_Name from table_name1, table_name2;

---WAQTD DETAILS OF EMPLOYEES AND DEPARTMENT TABLE.

SELECT *

FROM EMP CROSS JOIN DEPT;

SELECT *

FROM EMP, DEPT;

---waqtd name and dname of an employees

select ename, dname

from emp cross join dept;
