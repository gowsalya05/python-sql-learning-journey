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

7. SUBSTR():

substring function.

It is a function which is used to retrieve the part of string from the original string based on the given position.

syntax:

Substr('original_string', position, [length])

->Position is a place from where we start retrieving the records.

->length is number of character to retrieved from the given position

-> by default length function chooses all the characters from the given

position.

1 2 3 4 5 6 7 8 9

MALAYALAM

-9-8-7-6-5-4-3-2-1

--WAQTD STRING FROM THE MALAYALAM FROM THE POSITION 1

SELECT SUBSTR('MALAYALAM', 1)

FROM DUAL; --> MALAYALAM

---WAQT EXTRACT THE STRING FROM THE MALAYALAM STARTING FROM THE 5TH POSITION

SELECT SUBSTR('MALAYALAM',5)

FROM DUAL;

--WAQTD LAST CHARACTER FROM MALAYALAM

SELECT SUBSTR('MALAYALAM',-1)

from dual;

---waqt extract the first 4 character from malayalam

select substr('MALAYALAM',1,4)

from dual;

---WAQT EXTRACT THE FIRST CHARACTER FROM MALAYALAM

select Substr('MALAYALAM', 1,1)

FROM DUAL;

---waqtd last 2 charcater from malayalam

select substr('MALAYALAM',-2)

FROM DUAL;

---WAQTD THE LAST 3RD CHARACTER FROM MALAYALAM

SELECT SUBSTR('MALAYALAM',-3,1)

FROM DUAL;

---WAQTD NAME OF AN EMPLOYEE WHOSE NAME STARTS WITH LETTER

'S'

SELECT ENAME

FROM EMP

WHERE SUBSTR(ENAME,1,1) = 'S';

---WAQTD NAME OF AN EMPLOYEE WHOSE NAME ENDS WITH 'N' letter.

select ename

from emp

where Substr(ename,-1)='N';

---WAQTD NAME AN EMPLOYEE WHO ARE HAVING EXACTLY 4 TH CHARACTER AND 'L' IN THERE NAME.

SELECT ENAME

FROM EMP

WHERE SUBSTR(ENAME,4,1)='L';

8. INSTR():

It is a type of single row function which is used to extract the position of given string from the original string.

syntax:

Instr('original_string', 'given_string', position, [occurrence])

by default position and occurrence are 1.

---waqt extract the position of character 'L' from MALAYALAM

select instr('MALAYALAM', 'L')

from dual;

---waqtd position of character M from malayalam

select instr('MALAYALAM', 'M')

from dual;

---waqtd position of character "A" starting from the 5 position from malyalam

select instr('MALAYALAM', 'A',5)

from dual;

---WAQTD POSITION of character M which is present for second time on MALAY

select instr('MALAYALAM',' M',1,2)

from dual;

---waqtd position of character 'A' which is present for 4th time on MALAYALAM

select instr('MALAYALAM', 'A',1,4)

from dual;

---waqt search for the position of character 'B' from Malayalam.

select instr('MALAYALAM', 'B')

from dual;

---waqtd names of an employee who are having character 'R' in there name

select ename

from emp

where instr(ename, 'R')!=0;

--waqtd name of an employee who are having consecutive 'LL' in there name

select ename

from emp

where instr(ename, 'LL')>0;

---WAQTD name and job of an employee who are having the words called MAN in there job.

select ename,job

from emp

where instr(JOB, 'MAN')>0;

---WAQTD NAME OF AN EMPLOYEE WHO ARE HAVING THE STRING 'ER' in there name

select ename

from emp

where instr(ename, 'ER')!=0;

9. REPLACE():

It is a function which is used to replace the given string with the new string from the original string.

syntax:

Replace('original_string','given_string', ['new string'])

---WAQT replace character P from APPLE with the string B

select replace('APPLE', 'P','B')

from dual;

--waqtd remove character 'P' from APPLE

select replace('APPLE', 'P')

from dual;

---waqtd ename, and job at which if the job has the word called MAN then replace that

with WOMEN.

select ename, replace(job, 'MAN', 'WOMEN')

from emp;

REVERSE():

It is a type of function which is used to reverse the given string.

syntax:

reverse(string)

---waqt reverse the name called PRANIL

select reverse('PRANIL')

from dual;

---WAQTD NAME OF AN EMPLOYEE WHO HAS PALINDROME NAME

select ename

from emp

where ename=reverse(ename);

10. TRUNC():

It is afunction which is used to remove the decimal point value from the given number.

syntax:

TRUNC(number)

---waqt trunc the number 199.999

select trunc(199.999)

from dual;

11. ROUND():

It is a type of single row function which is used to round off given number to the nearest number.

Syntax:

Round(number)

---waqt round off the number called 78.345

select round(78.345)

from dual;--> 78

---waqt round off the number 99.569

select round(99.569)

from dual;-->100

MONTHS_BETWEEN():

It is a function which is used to find the number of months present between two given dates.

syntax:

Months_between(datel,date2)

sysdate:

It is a type of an argument which is used to accept/get the system date/current date on the system.

select Months_between('22-oct-2026', '22-oct-2024')

from dual;

---waqtd number of months that is present between todays and your birthdate.

select Months_between (sysdate, '24-jun-1998')

from dual;

---waqtd number of years that is present between todays and your birthdate.

select trunc(months_between(sysdate, '24-jun-1998')/12)

from dual;

WAQTD NAME AND NUMBER OF MONTHS SINCE EVERY EMPLOYEE ARE WORKING

SELECT ENAME, MONTHS_BETWEEN(SYSDATE, HIREDATE)

FROM EMP;

---WAQTD NAME AND HIREDATE OF AN EMPLOYEE WHO ARE WORKING MORE THAN

OR EQUALS TO 45 YEARS

select ename, hiredate

from emp

where trunc(months_between(sysdate, hiredate)/12)>=45;

12. LAST_DAY():

date. It is a function which is used to return the last date of the months based on the given

syntax:

Last_day(date)

---waqtd last date of todays date.

select last_day(sysdate)

from dual;

---waqtd last date of your birthdate

select Last_day('19-FEB-2000')

from dual;

---WAQTD NAME, AND HIREDATE OF AN EMPLOYEE WHO ARE HIRED IN A MONTH THAT HAS 30 DAYS

SELECT ENAME, HIREDATE

FROM EMP

WHERE LAST DAY(HIREDATE) LIKE '30%';

13. TO_CHAR():

It is a type of single row function which is used to convert the date type of data into a string format.

syntax:

TO_CHAR(date, 'format_model')

--> On To_char() we can not pass date format directly so to pass the date format data we use To_date() within To_char().

HH12:MI:SS ---->05:18:34

HH24:MI:SS---->17:18:34

---WAQTD THE DAY YOU GUYS ARE BORN

SELECT TO_CHAR(TO_DATE('22-NOV-2000'), 'DAY')

FROM DUAL;

---WAQTD NAME, SALARY AND HIREDATE OF AN EMPLOYEE WHO ARE HIRED IN THE YEAR 82

SELECT ENAME, SAL, HIREDATE

FROM EMP

WHERE TO CHAR(HIREDATE,'YY')=82;

---WAQTD NAME, HIREDATE AND DAY AND MONTHE THE EMPLOYEE ARE HIRED

select ename, hiredate, to char(hiredate, 'DAY MONTH')

FROM EMP;

--waqtd details of an employee who are hired on Wednesday

select *

from emp

where To_char(hiredate, 'day') = 'wednesday';
