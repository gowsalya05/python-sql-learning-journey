HISTORY of SQL(Structured Query Language):

SQL is used to communicate with RDBMS software. (Table based system).

--->SQL is given by the Donald D. Chamberlin and Raymond Boyce in the year 1970's
---> The previous name of SQL was SEQUEL (Simple English Query Language)

Overview of SQL.

Types of SQL statements:

1. DDL(Data Definition Language):

It is a type of SQL statement which is used to create the table and deals with the structure of the table.

Types of DDL statements are:

1. CREATE

2. RENAME

3. ALTER

4. TRUNCATE

5. DROP

2. DML(Data Manipulation Language):

It is a type of SQL statement which is used to modify the existing records of a table.

Types of DML statements:

1. INSERT

2. UPDATE

3. DELETE

3. TCL(Transaction Control language)

It is a type of SQL statement which is used to control the transaction done by the DML sto

Types of TCL statements are:

1. Commit

2. Rollback

3. Savepoint

4. DCL:(Data Control Language):

It is a type of SQL statement which is used to control the data flow between two users.

Types of DCL statements are:

1. GRANT

2. REVOKE
 
5.DQL(Data Query Language)

It is a type of SQL statement which is used to retrieve/fetch/get/access the records from the table.

Types of DQL statements are:

1. SELECT

2. PROJECTION

3. SELECTION

4. JOINS

Basic Commands for oracle sql software are:

To increase the length and width of the screen we use below command

set lines values (1-32767) (increasing the width) set pages values (0-50000) (increasing the length)

set lines values pages values

To clear the Screen we use Below Command:

clear screen

or

cl scr

command to check the existing table is :

select * from tab;

to display the data base user name we use below command:

show user;

to display the columns of a table we use the command called:

DESC Table Name

example:

desc emp

In SQL comments are mention with more than one hyphens(--)

DQL(Data Query Language):

It is a type of SQL statement which is used to retrieve the records of a existing table.

Types of DQL statements are:

1. SELECT:
It is a type of DQL statement which is used to select the records from the table and display it on the screen.

2. PROJECTION:
It is a type of DQL statement which is used to retrieve the records by selecting only the columns of a table.

3. SELECTION:
It is a type of DQL statement which is used to retrieve the records by selecting both rows and columns of a table.

4. JOINS: It is a type of DQL statement which is used to retrieve the records from multiple tables simultaneously.

PROJECTION:

It is a type of DQL statement which is used to retrieve the records from the table by selecting only columns.
SYNTAX:
Select */Distinct column_name/Expression [alias] from Table Name;

clause: These are the keywords which has a specific functionality to perform.

FROM:
It is a type clause which is used search the mentioned table on database.

Table_Name:
It is an argument that must be passed on from clause. It is a name of table from where the records gets retrieved.

SELECT:
It is a type of clause which is used to search for the specified Column_Name in the o/p of from clause.

--->If there exists the Column Name then it selects the records of that column and displays it as an output.
