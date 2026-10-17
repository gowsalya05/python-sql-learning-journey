TCL(Transaction Control language):

It is a type of SQL statement which is used to control the transaction done by the DML state

Transaction:

These are the operations done by using DML statements (insert, update, delete)

Types of TCL statements are:

1. Commit

2. Rollback

3. Savepoint

1. Commit:

It is a type of TCL statement which is used to save the records on a table after every DM

syntax:

Commit;

--WAQT insert 3 records and commit those records on PROD table

SQL> insert into prod values(&prod_no,'&prod_name', &price,&MFD);

Enter value for prod_no: 101

Enter value for prod_name: PEPSI

Enter value for price: 120.89

Enter value for mfd: '31-DEC-2025'

old 1: insert into prod values(&prod_no, '&prod_name', &price, &MFD)

new 1: insert into prod values(101, 'PEPSI', 120.89, 31-DEC-2025')

1 row created.

SQL> /

Enter value for prod_no: 102

Enter value for prod_name: FANTA

Enter value for price: 300

Enter value for mfd: '02-OCT-2026'

old 1: insert into prod values(&prod_no, '&prod_name', &price,&MFD)

new 1: insert into prod values(102, 'FANTA', 300,'02-OCT-2026')

1 row created.

2. ROLLBACK:

It is a type of TCL statement which is used to undo the record till the latest commit.

syntax:

ROLLBACK;

SQL>/

Enter value for prod_no: 105

Enter value for prod_name: tyui

Enter value for price: 7890

Enter value for mfd: null

old 1: insert into prod values(&prod_no, '&prod_name', &price,&M

new 1: insert into prod values (105, 'tyui', 7890,null)

1 row created.

SQL> select *

2 from prod;

PROD NO PROD NAME

PRICE MFD

101 PEPSI

120.89 31-DEC-25

102 FANTA

300 02-OCT-26

103 BOURBON

250.65 13-APR-26

104 ghjk

65789

105 tyui

7890

SQL> rollback;

Rollback complete.

SQL> select * from prod;

PROD NO PROD_NAME

PRICE MFD

101 PEPSI

120.89 31-DEC-25

102 FANTA

300 02-OCT-26

103 BOURBON

250.65 13-APR-26

SQL> select * from prod;

PROD NO PROD_NAME

PRICE MFD

101 PEPSI

120.89 31-DEC-25

102 FANTA

300 02-OCT-26

-&MFD)

103 BOURBON

250.65 13-APR-26

WHAT is the difference between truncate and delete.

3. SAVEPOINT:

It is a type of TCL statement which is used to provide restoration point on the inserted records.

--> Using savepoint we can undo the certain records

-> After assigning the savepoint on inserted records if we use commit all the savepoint gets vanished from those inserted records.

syntax:

savepoint savepoint_name;

syntax of savepoint along with the rollback is

rollback to savepoint;

recl---

rec2--

rec3---

commit

rec4--- savepoint t1

rec5---

rec6--- savepoint t2

rec7--1savepont t3

rec8..

rec9---

rollback to t2
