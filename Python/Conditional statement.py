## The control statement helps to control the flow of execution in 2 ways
##1. based on some conditions/decisions
##2. when we want to execute the same set of instructions n number of times
## There are 2 types of control statement
##1. Conditional/Decisional statement
##2. Looping statement

############################################################################################

##1. Conditional/Decisional statement: It helps to control the flow of execution based on some conditions or decisions

## There are 4 types
##1. if condition
##2. else condition
##3. elif condition
##4. nested if condition

############################################################################################

##1. if condition: "if" is a keyword. The control returns true statement block only when the
## condition get satisfied if not it just ignores
## syntax:
# if condition:
#     TSB

## wap to check the given integer number is greater than 15

# number = int(input('enter the number: '))
# if number > 15:
#     print('The given integer number is greater than 15')

## WAP TO CHECK THE GIVEN INTEGER NUMBER IS EVEN

# number = int(input('enter the number: '))
# if number % 2 == 0:
#     print('THE GIVEN INTEGER NUMBER IS EVEN')

## wap to check the string is having exactly 5 characters

# string = input('enter the string: ')
# if len(string) == 5:
#     print('The string is having exactly 5 characters')

## wap to check the given data is integer

# Data = eval(input('enter the data: '))
# if type(Data) == int:
#     print('The given data is integer')

## wap to check the given character is uppercase

# char = input('enter the character: ')
# if char.isupper():
#     print('The given character is uppercase')

## wap to check the given string is having even number of characters

# string = input('enter the string: ')
# if len(string) % 2 == 0:
#     print('The given string is having even number of characters')

## wap to check the given string starts with vowel character

# string = input('enter the string: ')
# if string[0] in 'aeiouAEIOU':
#     print('The given string starts with vowel character')

##or

# string = input('enter the string: ')
# if string.startswith(('a','e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')):
#     print('The given string starts with vowel character')

## wap to check the given number is divisible by 3 and multiple of 5

# number = int(input('enter the number: '))
# if number % 3 == 0 and number % 5 == 0:
#     print('The given number is divisible by 3 and multiple of 5')

## wap to check the given data is single value datatype

# Data = eval(input('enter the data: '))
# if type(Data) == int or type(Data) == float or type(Data) == complex or type(Data) == bool:
#     print('The given data is single value datatype')

##or

# Data = eval(input('enter the data: '))
# if type(Data) in [int, float, complex, bool]:
#     print('The given data is single value datatype')

##2. Else condition:"else" is a keyword. The control get TSB only when the condition get satisfied it not
## it executes the FSB
## syntax:
# if condition:
#     TSB
# else:
#     FSB

## wap to check the given number is odd or even

# number = int(input('enter the number: '))
# if number % 2 != 0:
#     print('The given number is odd')
# else:
#     print('The given number is even')

## wap to check the two variables having positive integer value are pointing to same address or not

# num1 = int(input('enter the num1: '))
# num2 = int(input('enter the num2: '))
# if id(num1) == id(num2):
#     print('The two variables having positive integer value are pointing to same address')
# else:
#     print('The two variables having positive integer value are not pointing to same address')

##or

# num1 = int(input('enter the num1: '))
# num2 = int(input('enter the num2: '))
# if num1 is num2:
#     print('The two variables having positive integer value are pointing to same address')
# else:
#     print('The two variables having positive integer value are not pointing to same address')

## wap to check the first element of list is string or not

# List = eval(input('enter the list: '))
# if type(List[0]) == str:
#     print('The first element of list is string')
# else:
#     print('The first element of list is not string')

## wap to check the given string having a middle character or not

# string = input('enter the string: ')
# if len(string) % 2 != 0:
#     print('The given string having a middle character')
# else:
#     print('The given string not having a middle character')

##3. Elif Condition: Whenever we want to check multiple conditions we use elif condition

## syntax:

# if condition1:
#     TSB1
# elif condition2:
#     TSB2
# elif condition3:
#     TSB3
#
# else:
#     FSB         ## else is optional

## wap to check the relationship between two integer number

# num1 = int(input('enter the num1: '))
# num2 = int(input('enter the num2: '))
# if num1 == num2:
#     print('Both numbers are equal')
# elif num1 > num2:
#     print('num1 is greater')
# elif num1 < num2:
#     print('num2 is greater')

##or

# num1 = int(input('enter the num1: '))
# num2 = int(input('enter the num2: '))
# if num1 == num2:
#     print('Both numbers are equal')
# elif num1 > num2:
#     print('num1 is greater')
# else:
#     print('num2 is greater')

## wap to check the given character is uppercase or lowercase or number or special character

# char = input('enter the character: ')
# if char.isupper():
#     print('The given character is uppercase')
# elif char.islower():
#     print('The given character is lowercase')
# elif char.isdigit():
#     print('The given character is digit')
# else:
#     print('The given character is special')

## wap to check the positive integer number is having exactly single or
# double or triple digit or more than 3 digit

# number = int(input('enter the number: '))
# if len(str(number)) == 1:
#     print('The positive integer number is having exactly single digit')
# elif len(str(number)) == 2:
#     print('The positive integer number is having exactly double digit')
# elif len(str(number)) == 3:
#     print('The positive integer number is having exactly triple digit')
# else:
#     print('The positive integer number is having more than three digit')

##or

# number = int(input('enter the number: '))
# if 0 <= number <= 9:
#     print('The positive integer number is having exactly single digit')
# elif 10 <= number <= 99:
#     print('The positive integer number is having exactly double digit')
# elif 100 <= number <= 999:
#     print('The positive integer number is having exactly triple digit')
# else:
#     print('The positive integer number is having more than three digit')

## take a string input,
##1. if the string having exactly 5 character print the given input
##2. if the string having less than 5 character print reverse string
##3. if the string having more than 5 character print alternate characters

# string = input('enter the string: ')
# if len(string) == 5:
#     print(string)
# elif len(string) < 5:
#     print(string[::-1])
# else:
#     print(string[::2])

## take an integer input,
##1. if given number is divisible by 3 print 'hii'
##2. if given number is divisible by 5 print 'bye'
##3. if given number is divisible by 3 and also 5 print 'hiibye'

# number = int(input('enter the number: '))
# if number % 3 == 0 and number % 5 == 0:
#     print('HiBye')
# elif number % 3 == 0:
#     print('Hii')
# elif number % 5 == 0:
#     print('Bye')

## wap to check the greater among 3 integer number
## wap to check the given character is alphabet or number or special


##4.Nested if condition: We will have the if condition inside another if condition

## syntax:

# if condition1:
#     if condition2:
#         TSB2
#     else:
#         FSB2
# else:
#     FSB1

## wap to print the length of collection only if it is having length greater than 5

# Data = eval(input('enter the data: '))
# if type(Data) in [str, list, tuple, set, dict]:
#     if len(Data) > 5:
#         print(len(Data))
#     else:
#         print('The length of the given collection is not greater than 5')
# else:
#     print('The input is not collection type')

## wap to check the given character is vowel or not

# char = input('enter the character: ')
# if char.isalpha():
#     if char in 'aeiouAEIOU':
#         print('The given character is vowel')
#     else:
#         print('The given character is not vowel')
# else:
#     print('The given character is not alphabet')

## Wap to check the person eligible for indian citizenship
# (only if person is above or equal to 18 years and indian)

# Age = int(input('enter the age: '))
# Nationality = input('enter the nationality: ').upper()
# if Age >= 18:
#     if Nationality == 'INDIAN':
#         print('The person eligible for indian citizenship')
#     else:
#         print('The person is not eligible for indian citizenship')
# else:
#     print('The age is not greater or equal to 18')

## Wap to check the number is positive/negative and even/odd

# number = int(input('enter the number: '))
# if number > 0:
#     if number % 2 == 0:
#         print('The number is positive even')
#     else:
#         print('The number is positive odd')
# else:
#     if number % 2 == 0:
#         print('The number is negative even')
#     else:
#         print('The number is negative odd')

# An employee receives a bonus if their performance rating is at least 4.
# If the rating qualifies,
# check whether the employee has completed at least 2 years in the company.

# Rating = int(input('enter the rating: '))
# Year_of_Exp = int(input('enter the exp: '))
# if Rating >= 4:
#     if Year_of_Exp >= 2:
#         print('An employee receives a bonus')
#     else:
#         print('the employee has not completed at least 2 years in the company')
# else:
#     print('The rating is not good enough')

# An online store gives a discount only when the purchase amount is ₹5000 or more.
# If the amount qualifies, check whether the customer is a premium member(yes/no).
# Premium members receive 20% discount; others receive 10%.
# get the discount amount and final price after deducting the discount

# Amount = int(input('enter the amount: '))
# Premium_Membership = input('enter the value: ')
# if Amount >= 5000:
#     if Premium_Membership == 'Yes':
#         Discount = Amount * 0.2
#     else:
#         Discount = Amount * 0.1
#
#     print(f'The discount is {Discount}')
#     Total_Bill = Amount - Discount
#     print(f'The total bill is {Total_Bill}')
# else:
#     print('The person will not get the discount')

# loan application: A bank first checks whether the applicant's salary is at least Rs30,000.
# If the salary is sufficient, check the credit score.
# A credit score of 700 or above makes the applicant eligible

# salary = int(input('enter the salary: '))
# credit_score = int(input('enter the credit score: '))
# if salary >= 30000:
#     if credit_score >= 700:
#         print('The person is eligible for loan')
#     else:
#         print('The person having less credit score')
# else:
#     print('The salary of person is not sufficient')

# Write a program for login authentication. First check whether the password is correct.
# If the password is correct, check whether the Username entered by the user is correct.
# username = 'abc_123'
# password = '123_abc'

# username = input('enter the username: ')
# password = input('enter the password: ')
# if password == '123_abc':
#     if username == 'abc_123':
#         print('Logged In')
#     else:
#         print('The username is not correct')
# else:
#     print('The password in not correct')

# A travel company provides a student discount.
# First check whether the person is a student(yes/no).
# If they are a student, check their age.
# Students below 25 receive the discount.

# A cinema allows online booking only if the customer is 18 or older.
# If the customer is eligible, check whether seats are available(yes/no).


























