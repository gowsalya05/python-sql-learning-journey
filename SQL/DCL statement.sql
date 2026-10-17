DCL(DATA CONTROL LANGUAGE):

It is a type of SQL statement which is used to control the data flow between 2 users.

Types of DCL statements are:

1. GRANT

2. REVOKE

1.GRANT:

It is a type of DCL statement which is used to grant the permission to other user to perform SQL statements.

syntax:

GRANT SQL statements

on Table_Name

To user_name;

2. REVOKE:

It is a type of DCL statement which is used to takeback the permission to whom we grant.

syntax:

REVOKE SQL STATEMENT

on Table Name

From user name;

SOL> show user

USER is "SCOTT"

SQL>

SQL> connect

Enter user-name: hr

Enter password: tiger

Connected.

SQL>

SQL> show user

USER is "HR"

SQL>

SQL> select *

2 from tab;

SQL> connect

Enter user-name: scott

Enter password:

Connected.

----waqt GRANT THE SELECT AND INSERT STATEMENT TO THE HR BY scott.

SQL> grant select, insert

2 on prod

3 to hr;

SC Re

Grant succeeded.

SQL> connect

Enter user-name: hr

Enter password:

Connected.

SQL> select * from scott.prod;

PROD NO PROD_NAME

PRICE MFD

101 PEPSI

120.89 31-DEC-25

102 FANTA

300 02-OCT-26

103 BOURBON

250.65 13-APR-26

104 BINGO

55 21-OCT-25

105 GOOD DAY

350 01-JAN-26

106 HAPPY HAPPY

120 10-OCT-26

to unlock the account:

login as

user name:SYSTEM

PWD: TIGER

alter user hr account u

alter user hr identified

6 rows selected.

SQL> insert into scott.prod values (107, 'LAYS', 130, null)

1 row created.

SQL> update scott.prod

2 set mfd='10-MAY-2026'

3 where prod_no=107;

update scott.prod

ERROR at line 1:

ORA-01031: insufficient privileges

SQL> connect

Enter user-name: scott

Enter password: *****

Connected.

WAQT REVOKE THE SELECT AND INSERT ON PROD TABLE GIVEN TO THE HR.

SQL> revoke select, insert

on prod

 from hr;

Revoke succeeded.
