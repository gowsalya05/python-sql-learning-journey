FUNCTIONAL DEPENDENCY:

It is used to understand the relation between the attributes of a same table.

R(X,Y,Z):

here, X,Y,Z are the attributes of a table.

X->Y [X determined Y]

X is called as Determinant

Y is called Dependent

Types of functional Dependency:

1. Total Functional Dependency

2. Partial Functional Dependency

3. Transitive Functional Dependency.

1. Total Functional Dependency:

It is a type of Dependency at which all the non key attributes of a table determined by the single key attribute.

R(empno, ename, sal,job, deptno)

in this relation all the non key attributes like ename, sal, job, deptno are determined key attribute called as empno so here there exists Total Functional dependency.

2. Partial Functional Dependency:

A part of composite key identifies other non key attribute unique then such type of functional dependency are called as Partial Functional Dependency.

example:

R(a,b,c,d)

in this relation there is no key attribute so identify the records we choose composite

key attribute.

(a,c) is a composite key attributer

(a,c)->b and (a,c)->d it is the Total Functional dependency.

instead if a part of composite key that means c->d (c determines d) it is a partial functional dependency.

3. Transitive Functional Dependency:

It is a type of Functional dependency at which one non key attribute determines anot non key attribute unique which in turn determined by the Key attribute than such type of depend are called as Transitive Functional Dependency.

example:

R(L,M,N,O) L is key attribute and M,N,O are the non key attribute.

L->M,M->N

L->N

NORMALIZATION:

It is a process of dividing the larger table into a smaller table in order to remove data redundancy and anomalies.

Redundancy:

Duplicate/repeated records in a table are known as Redundancy.

Anomaly:

It is a problem/side effect that is occurred due to performing DML operation is known as Anomalies.

the table is known to be in Normal Form:

when the table is without data redundancy and Anomalies than That form of table is Known as Normal Form

To take a table to the Normal Form we have levels of Normalization.

1. First Normal Form(1NF)

2. Second Normal Form (2NF)

3. Third Normal Form(3NF)

4. Boyce Codd Normal Form(BCNF)

NOTE:

whenever the table reaches the 3NF than automatically the table g Normalized.

1. First Normal Form:

A table is said to be in a Normal if follows the below:

1. The table should not have duplicate records

2. The table should not have multi valued data in it.

other ndency

2. Second Normal Form:

A table is said to be in 2nd Normal form it follow below rules:

1. Table must be in First Normal Form

2. Table should not have any Partial Functional Dependency

3. Third Normal FORM:

A table is said to be third Normal Form if follows below rules:

1. The table must be in 2NF

2. The table should not have any Transitive functional dependency

4.BCNF(Boyce Codd Normal Form)

It is update version of 3rd Normal Form -> It is also called as 3.5 NF
