Types of single row function:

1. Length()

2. Mod()

3. concat()

4. Upper()

5. lower()

6. InitCap()

7. Reverse()

8. Substr()

9. Instr()

10. replace()

11. Round()

12. Trunc()

13. Months_between()

14. Last_day()

15. To_char()

16. NVL()

1. length():

It is a type of single row function which returns the number of charracters in the given value.

syntax:

length(value)

DUAL:

it is a dummy table which is used to get the output for the user provided input.

---WAQTD NUMBER OF CHARACTER PRESENT IN THE GIVEN STRING CALLED 'SHIVANI'.

select length('SHIVANI')

from dual;

---waqtd name, sal of an employee who are having exactly 6 characters in there name

select ename,sal

from emp

where length(ename) =6;

2. MOD():

It is a type of single row function which returns the reminder of 2 number after division.

syntax:

mod(num1, num2)

---WAQTD REMINDER OF 321 AND 59

SELECT MOD(321,59)

FROM DUAL;

---WAQTD REMINDER OF (11,2), (326,2), (1001,2), (9678,2)

SELECT MOD(11,2), MOD(326,2), MOD (1001,2), MOD(9678,2)

FROM DUAL;

---WAQTD NAME AND SALARY OF AN EMPLOYEE WHO IS EARNING ODD SALARY

select ename, sal

from emp

where mod(sal,2)=1;

---waqtd name of an employee who is having even number of characters in there nam

select ename

from emp

where mod(length(ename),2) = 0;

--wagtd name and salary of an employee who is earning odd number of characters in

select ename,sal

from emp

where mod(length(ename),2)=1;

3. CONCAT():

It is a type of function which is used to combine two values.

syntax:

concat(val1, val2)

---waqt concatenate the two name called ANKITA and NIMA

select concat('ANKITA', 'NIMA')

FROM dual;

select concat('ANKITA', concat('', 'NIMA'))

FROM dual;

---WAQT CONCATENATE NAME AND SALARY COLUMN WITH SOME SPACE

SELECT CONCAT(CONCAT(ENAME,' '), SAL)

FROM EMP;

4. UPPER():

uppercase. It is a function which is used to convert all the lowercase letters into its

syntax:

UPPER(value)

---waqt convert all the lower case letters of a given string to its upper case and the string is india

select upper('india')

from dual;

---waqtd name of all the employees in its uppercase

select upper(ename)

from emp;

there name

5. LOWER():

It is a function which is used to convert all the uppercase letters into

syntax:

Lower(value)

---WAQTD uppercase letters of a given string to its lowercase and the string is KOW

select lower('KOWSALYA')

from dual;

--WAQTD NAME AND JOB OF AN EMPLOYEE IN ITS LOWERCASE

SELECT LOWER (ENAME), LOWER (JOB) FROM EMP;

5. LOWER():

It is a function which is used to convert all the uppercase letters into its lower case.

syntax:

Lower(value)

--WAQTD uppercase letters of a given string to its lowercase and the string is KOWSALYA

select lower('KOWSALYA')

from dual;

--WAQTD NAME AND JOB OF AN EMPLOYEE IN ITS LOWERCASE

SELECT LOWER(ENAME), LOWER (JOB)

OM EMP;

6. INITCAP():

It is a function used to convert only the first character of string to its uppercase and remaining characters into its lowercase.

syntax:

InitCap(value)

---waqtd apply InitCap on the given string called POORNIMA

select InitCap('POORNIMA')

from dual;

---WAQTD CAPITALIZE ONLY THE FIRST CHARACTER OF ALL THE EMPLOYEE NAME

select initcap(ename)

from emp;
