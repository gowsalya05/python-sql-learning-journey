CO-RELATED SUBQUERY:

It is a type of subquery which works on the principle of subquery and joins. ---> If any subquery that has join condition in its inner query it in known to be a Co-

Relates subquery.

-> In co-related subquery always outer query executes first

Outer query executes and returns the partial output

-> The partial output will be given as an input to the inner query

-> inner query executes and returns the o/p

-> The o/p of the inner query is given as an input to the outer query

-> at last outer query executes and returns the final result

From the overall execution we conclude that inner query and outer query are

interdependent on each other.

--WAQTD DNAME OF AN EMPLOYEES AT WHICH EMPLOYEES ARE WORKING.

select d.dname

from dept d

10,20,30,null

where d.deptno in(select e.deptno

from emp e

where d.deptno=e.deptno);


