DDL(Data Definition Language):

It is a type of SQL statement which is used to create the table and also deals with the structure of the table.

Types of DDL statements:

1. Create

2. Rename

3. Alter

4. Truncate

5. Drop

1. CREATE:

It is a type of DDL statement which is used to create the table on the data base.

SYNTAX:

Create table Table Name(Column_Name data_type constraints,

Column_name2 data_type constraints,

Column_nameN data_type constraint

);

---waqt create a dummy table with the columns like ID, name, phone_no in it.

create table DUMMY(ID number(6) Primary key,

name varchar(15) not null,

Phone_no number(10) unique not null check(phone_no>0 and length(phone_no)=10) );

---WAQT Create table called product with the columns like Prod_no,prod_name and price of product and Manufacture_date product

create table product (prod_no char(5) primary key,

prod_name varchar(20) not null, Price number(9,2) not null, Manufacture_date date );

2. RENAME:

It is a type of DDL statement which is used to change the existing Table_Name with new table name.

syntax:

RENAME Existing_table_name to new_table_name;

---WAOTD RENAME THE TABLE CALLED DUMMY TO DEMO;

RENAME DUMMY TO DEMO;

3. ALTER:

It is a type of DDL statement which is used to modify the existing table structure. using alter statement we can modify the table structure performing the below changes:

1. By adding a column

2. By renaming the column

3. BY dropping column

4. BY modifying the data type

5. BY modifying the constraint

6. BY adding constraint

7. By dropping the constraint

8. BY assign the foreign key constraint

---waqt

1. BY adding the column:

It is used to add new column to the existing table.

syntax:

alter table Table_Name

add new_column_name data_type constraint;

---waqt add a column called email to the demo table.

alter table demo

add email varchar(30) unique;

---waqt add expiry_date column to the product

alter table prod

add expiry_date date;

2. By renaming the column:

It is used to change the existing Column_Name to a new Column_Name;

syntax:

alter table Table_Name

rename column existing_column_name to new_column_name;

---waqt rename the column called Phone_no to Mobile_no on demo table

alter table demo

rename column phone_no to mobile_no;

---waqt rename the column called as Manufacture_date to MFD on prod table

alter table prod

rename column manufacture_date to mfd;

CREATE TABLE CUSTOMER (cid number(5) primary key,

cname varchar(20) not null,

phone no number(10) unique not null check(phone_no>0

and length(phone_no)=10),

Address varchar(35) not null);

---wagt rename the table name from customer to cust

rename customer to cust;

---waqt change the column called phone_no to contact on cust table

alter table cust

rename column phone_no to contact;

3. By dropping the column:

it is statement used to remove the column from the existing table.

syntax

alter table Table_Name

drop column Column_Name;

---WAQT DROP THE EXPIRY DATE FROM PROD TABLE

alter table prod

drop column expiry_date;

---waqtd drop the address column from the cust table

alter table cust

drop column address;

4. By modifying the data type:

It is a statement which is used to modify the data type of a existing column.

syntax:

alter table Table Name

modify Column_Name new_data_type;

---waqtd change the data type of prod table prod_no column char(5) to char(6)

alter table prod

modify prod_no char(6);

---waqt change the data type of char(6) to number(5) on prod_no column of a prod table.

alter table prod

modify prod_no number(5);

5. By modifying constraint:

It is used to change the constraint of a column and we can only modify the constraint not null to null/null to not null

syntax:

alter table Table Name

modify Column_Name data_type null/not null;

---waqt make email column as mandatory field on demo table.

alter table demo

modify email not null;

command to check the constraints of the entire table:

select *

from user_constraints;

to check the constraints of a specific table we use below

command:

select *

from user_constraints

where table_name='TABLE_NAME';

---waqt drop the email column from demo table.

alter table demo

drop column email;

---waqt add email column without assigning the any constraint on demo.

alter table demo

add email varchar(30);

6. By adding the constraint:

It is used to add a new constraint to the existing column of a table.

syntax:

alter table Table Name

add constraint con_ref_name name_of_constraint(Column_Name);

constraint reference name:

7.By dropping the constraint:

it is name of constraint assigned for the constraint of column to identify in un

-->it should be unique

-> using this name we can easily drop the constraint of a specific column of a table.

---waqt add unique constraint to the email column of a demo table.

alter table demo

add constraint uni_mail Unique(email);

---waqtd add check constraint to the email7. By dropping the constraint:

It is a constraint which is used to drop the constraint of specific column of a table using constraint reference name.

syntax:

alter table Table_Name

drop constraint constraint_reference_name;

---waqt drop the check constraint that is assigned for email column of demo table.

alter table demo

drop constraint check_mail;

8. By adding the foreign key constraint:

It is a statement which is used to add the foreign key constraint to establi between 2 tables.

and it can be done in two ways:

1. when already the table exists

2. During table creation column to check is the email has.com in it


1. ASSIGN THE FOREIGN WHEN ALREADY THE TABLE EXISTS:

Among PARENT TABLE AND CHILD TABLE we need to alter the child table only.

Syntax:

1. for assigning the foreign to the child table.

alter table child table name

add parent_column data_type

add constraint con_ref_name name_of_constraint(parent_column_name)

references parent_table_name(parent_column_name);

---waqt establish the connection between PROD and CUST table where the tables already exists

prod-> prod_no,prod_name,price,mfd

cust->cid,cname,contact,prod_no(fk)

among these table we choose parent table as a prod table and cust table as a child table

alter table cust

add pid number(5)

add constraint fk_pid foreign key(pid)

references prod(prod_no);

2. Assign the foreign key during table creation:

To do this we must first create the parent table and then followed the child table.

syntax for creating the child table by assigning the foreign key:

create table child_table_name(coll data_type constraint,

col2 data_type constraint,

parent_column1 data_type, constraints con_ref_name Foreign key(parent_column) references parent_table(parent_column) );

---waqt create the student and course table and during table creation establish the connection between course and student table

course: c_no,cname, fees

student: Stud_id, sname,c_no(f.k)

create table course(c_no number(3) primary key, cname varchar(20) not null, fees number(9,2) not null check(fees>0) );

create table student(stud_id number(5) primary key, sname varchar(25) not null, c_no number(3), constraints FK_C_no Foreign key(c_no) references course(c_no);

4.TRUNCATE:

It is a type of DDL statement which is used to delete all the records of a table permanently without altering the table structure.

---> Truncate is used to empty the table permanently.

syntax:

Truncate table Table Name;

---waqt truncate the demo table.

SQL> truncate table demo;

Table truncated.

5.DROP:

It is a type of DDL statement which is used to delete the entire table and it is temporary.

syntax:

Drop table Table_Name;

-> The dropped table moves to recyclebin

-> The recyclebin always stores the dropped table

-> To restore table and delete table from recyclebin we have a command.

command to check the recyclebin:

select *

from recyclebin;

The statements that works with recyclebin are:

1. Flashback

2. Purge

1. Flashback:

It is a statement which is used to restore the dropped table from recyclebin.

syntax:

flashback table Table_Name to before drop;

2. PURGE:

It is a statement which is used to delete the dropped table from recyclebin permanently.

syntax:

Purge table Table_Name;

---WAQT DROP demo table and then check data base tables and recyclebin

drop table demo;

select * from recyclebin;

select * from tab;

---waqt restore the dropped table called Demo and check recyclebin and data base

flashback table demo

to before drop;

select * from recylebin;

select *

from tab;

---WAQTD DROP THE DEMO TABLE AND PURGE THE DEMO TABLE CHECK THE TABLES OF RECYCLEBIN AND DATA BASE TABLE

DROP TABLE DEMO;

PURGE TABLE DEMO;

SELECT * FROM RECYCLEBIN;

SELECT * FROM TAB;
