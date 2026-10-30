NORMALIZATION:

To understand the normalization we need to known about some prerequisites.

1. Types of attribute.

2. Types of Functional Dependency

3. Normalization.

TYPES OF ATTRIBUTES:

1. Key attribute

2. Non key attribute

3. Prime key attribute

4. Non Prime key attribute

5. Super key attribute

6. Composite key attribute

7. Foreign key attribute

1. key attribute:

It is a type of attribute which is used to accept only the unique value are known as Key attributes.

-> which identifies the records uniquely we call it as Key attribute.

EMP: empno, ename, sal, job, hiredate, deptno, email, phone

example: empno, email, phone

2. Non key attribute:

In a set of attributes of a table other than the Key attributes remaining attributes are known as Non key attributes.

example: ename, sal, job, hiredate, deptno,

3. PRIME KEY attribute:

It is a type of attribute which is chosen from the set of key attribute to identify all the records of a table uniquely from the table.

--> In set of key attributes of a table we choose only one attribute to identify the records of a table uniquely are called Prime key attribute

set key attributes: empno, email, phone

example: empпо.

4. NON PRIME KEY ATTRIBUTES:

In set of key attribute of a table other than the PRIME key attribute remaining e are called as NON PRIME key attribute.

set of key attribute: empno, email, phone

example: email, phone

5. SUPER KEY ATTRIBUTE:

A set of all the key attributes which is used to identify the records uniquely are ke --> A set of all the key attribute.

example:

(empno, email, phone)

6.COMPOSITE KEY ATTRIBUTE:

It is a combination of more than one non key attribute which is used to identify the records uniquely from the table are called as Composite key attribute.

student: sname, Iname, class, marks, address

example: (sname, Iname)

7.FOREIGN KEY ATTRIBUTE:

It is a type of attribute at which key attribute of one table acts like non key attribute in another table then such type of attributes we call it as a Foreign key attribute.

DEPT table deptno is prime key attribute EMP table deptno is non key attribute

example of foreign key attribute is: deptno.
