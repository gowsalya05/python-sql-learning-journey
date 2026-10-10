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

atd create a table called CUSTOMER with the columns like Cid, Cust_name, phone_no and address
