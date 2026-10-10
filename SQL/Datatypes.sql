DATA TYPES:

It is a type/kind of value that one particular column should accept.

Types of data types are:

1. Char

2. Varchar/varchar2

3. Number

4. Date

5. Large objects:

1. CHAR:

Character

It is a type of data type which stores the sequence of characters alphabets (A-Z,a-z), digits(0-9) and special symbols(@!#$%^...etc) which are enclosed within single quote either it might be in a single character or sequence character.

'A', 'Anish@123'

syntax:

Char(size)

size: It is used indicate the length of character/it is used to indicate the number of characters that one particular column should accept.

Maximum number of characters to be stored in char data type is of up to size 2000 characters.

FIXED LENGTH MEMORY ALLOCATION:

Once memory is allocated it can not modified later.

Once the memory is allocated memory can not be resizable.

It is also known as Static memory allocation

example of columns to which we can use char data type

whenever number of characters remain same for all the entities for such columns we use char

data type.

IFSC, PAN, USN, UAN, vehicle number....

VARCHAR:

It is a type of data type similar to CHAR because it also stores the data which is combination of alphabets digits and special characters which are enclosed within single quotes.

syntax:

VARCHAR(size)

---> Maximum number of character that we can pass for varchar data type is of up to size 2000 characters.

---> In case of varchar there is no wastage of memory because it follows

variable length memory allocation.

---> Variable Length Memory Allocation:

The memory varies according to the data we store in it. It is also known as dynamic memory allocation.

example of columns to which we can assign VARCHAR data type. name, location, disignation, PAN, IFSC, USN...etc

VARCHAR2:

It is a type of data type similar to Varchar data type means it also stores the character with the combination of alphabets, digits and special symbols which are enclosed within single quotes.

--->It also follows Variable length memory allocation

---> It is also called as update version of varchar data type

syntax:

varchar2(size)

->Maximum number of character we store is of up to size 4000 characters.

--> if we use varchar data type still the software accepts the data type as varchar2.

3. NUMBER:

It is a type of data type which is used to store only the numerical values in it. It might be a integer part of number or decimal point values.

Oracle so

drive link

syntax:

Number(Precision, [Scale])

password

Precision:

It is a argument in the number data type which is used to store integer part of number.

---> There is no default value for precision

---> It is a mandatory argument must be passed for precision.

---> The range of precision is 1-38

Scale:

It is a argument in the number data type which is used to store the decimal point value within the specified precision.

--->Scale is optional to be used for number data type

--->The default value for scale is 0.

--> the range of scale is -84 to +127

4.DATE:

It is a type of data type which is used to store the date kind of data in it.

---> always date must entered according to the oracle given date

format.

DD-MON-YYYY

DD-MON-YY

example: 08-SEP-2026 or 08-SEP-26

---> Always has to be enclosed within single quotes.

syntax:

DATE

example of columns to which we assign the date data type.

DOB,Expired_date, MFD, Hiredate, Deadline, .....etc

5. LARGE OBJECTS:

It is a type data type which is used to large amount of data in it.

Types of large objects are:

1. CLOB(Character Large Object)

2. BLOB(Binary Large Object)

1. CLOB(Character Large Object):

It is a type of large object which is used to store large amount character up to

size of 4GB.

syntax:

CLOB

example of columns to which we can assign CLOB data type:

Feedback, descriptions, articles, short stories, summary, Comics...etc

2. BLOB(Binary Large Object):

It is a type of data type which is used to store the large amount of binary data up to size of 4GB.

syntax:

BLOB

example of columns to which we can assign BLOB:

images, videos, audios, pdf, mp3, mp4,...all multi-media files.

CONSTRAINTS:

It is a set of rules assigned for the columns for extra validation.

Types of constraints are:

1. Unique

2. Not Null

3. Check

4. Primary key

5. Foreign key

6. Default

1. Unique:

It is a constraint which is used to accept only unique/different data in the column to which we mention it as unique.

syntax:

Unique

example of columns to which we can assign unique constraints are:

id, roll_no, UAN,USN, Pan_no, Aadhar_no, account_no, phone_no,email_id...etc

2. NOT NULL:

NULL means empty

Not Null means Not empty.

It is a type of constraint which is used to avoid the entry of null value to the column which is assigned with the Not null constraint.

---> To make column as mandatory fields we use Not Null constraint.

syntax:

NOT NULL

example of columns to which we can assign not null constraint:

name,id,phone_no,sal,job, hiredate,...etc

3. CHECK:

It is a type of constraint which is assigned for the columns for extra validation.

--->Always check constraint must be used along with the condition

syntax:

CHECK(condition)

Phone

check(length(phone)=10 and phone>0)

age

check(age>=18)

4. PRIMARY KEY:

It is a type of constraint which is used to identify the records of a table uniquel

syntax:

Primary key

Characteristics of Primary Key constraint:

1. Primary key constraint rejects the duplicate data and similar to Unique constraint

2. Primary key constraint rejects the Null values and similar to Not Null constraint.

3. Primary key constraint by default unique and not null.

4. We can have table with or without primary key constraint

5.In a table we can only one primary key per table

student:----> rollno, name, marks, class, address, course, phone, aadhar_no

customer_bank:----> спате, address, Pan_no,aadhar_no,account_no

5. FOREIGN KEY:

tables. It is type of constraint which is used to establish the connection between two

--->This is the constraint that choosing the reference of another table that is the reason it is known as Foreign key constraint.

---> If any column is chooses as a foreign key it has to be unique /primary key in another

table.

characteristics of Foreign key constraint:

---> Foreign key constraint can accept duplicate data it is not similar to unique constraint.

-> Foreign key constraint can accept the null data it is not similar to Not Null constraint

Foreign key is not a combination of unique and not null constraint.

--> We can have table with or without foreign key constraint.

--> We can have more than one foreign key column per table.

--> Another name of Foreign key constraint is Referential Integrity constraint.

student

sid, sname, address,cid(f.k)

course: cname,cid(p.K)

6. DEFAULT:

It is a type of constraint using which we can assign the default value to the specified column.

--->Default value is acceptable by the column in absence data entry to that column.

syntax:

Default default_value

example:

default 91

What is the difference between Primary Key constraint and Foreign key constraint.
