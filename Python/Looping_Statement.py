########################################Looping Statement
#######WHILE LOOP##########
## It helps to execute the same set of instructions for n number of times
## It executes till the condition become False

## syntax:

# initialization
# while condition:
#     TSB
#     updation

# i = 1
# while i <= 3:
#     print('hi')
#     i += 1      ## i = i + 1

## WAP TO PRINT N NATURAL NUMBERS

# number = int(input('enter the number: '))
# i = 1
# while i <=number:
#     print(i)
#     i += 1

## Print multiplication table of a number

# number = int(input('enter the number: '))
# i = 1
# while i <= 10:
#     print(f'{number} X {i} = {number * i}')
#     i += 1

## WAP TO PRINT "N NATURAL" NUMBERS WHICH ARE DIVISIBLE BY 3

# number = int(input('enter the number: '))
# i = 1
# while i <= number:
#     if i % 3 == 0:
#         print(i)
#     i += 1

## WAP TO EXTRACT ALL THE LOWERCASE CHARACTER FROM THE GIVEN STRING
## input = 'A1b2c#' ==> output = 'bc'

# string = input('enter the string: ')
# new_string = ''
# i = 0
# while i < len(string):
#     if string[i].islower():
#         new_string += string[i]
#     i += 1
# print(new_string)

# '' + 'b' ==> 'b'
# 'b' + 'c' ==> 'bc'

## WAP TO EXTRACT ONLY THE INTEGER FROM THE LIST COLLECTION
## List = [1, 3.4, 3, 'hii', 8-9j] ===> out = [1, 3]

# List = eval(input('enter the list: '))
# new_list = []
# i = 0
# while i < len(List):
#     if type(List[i]) == int:
#         new_list += [List[i]]
#     i += 1
# print(new_list)

# [] + [1] ==> [1]
# [1] + [3] ==> [1,3]

##or

# List = eval(input('enter the list: '))
# new_list = []
# i = 0
# while i < len(List):
#     if type(List[i]) == int:
#         new_list.append(List[i])
#     i += 1
# print(new_list)

## WAP TO REMOVE THE DUPLICATE VALUES FROM THE LIST WITHOUT TYPECASTING
# NAMES = ['apple', 'google', 'apple', 'apple', 'insta']
# out = ['apple', 'google', 'insta']

# List = eval(input('enter the list: '))
# out = []
# i = 0
# while i < len(List):
#     if List[i] not in out:
#         out.append(List[i])
#     i += 1
# print(out)

## WAP TO EXTRACT ALL THE FLOAT FROM THE TUPLE COLLECTION
## Tuple = (1, 3.4, 5.3, 'hii', 8-9j) ==> out = (3.4, 5.3)

# Tuple = eval(input('enter the tuple: '))
# new_tuple = ()
# i = 0
# while i < len(Tuple):
#     if type(Tuple[i]) == float:
#         new_tuple += (Tuple[i],)
#     i += 1
# print(new_tuple)

# () + (3.4,) ==> (3.4,)
# (3.4,) + (5.3,) ==> (3.4,5.3)

## TAKE A STRING INPUT, EXTRACT ALL THE UPPERCASE, LOWERCASE, DIGITS AND SPECIAL CHARACTER IN 4 DIFFERENT VARIABLE
## String = 'A1b&2C3*D41'
## upper = 'ACD'  lower = 'b' Digit = '123'  special = '&*'

# string = input('enter the string: ')
# upper, lower, digit, special = '', '', '', ''
# i = 0
# while i < len(string):
#     if string[i].isupper():
#         upper += string[i]
#     elif string[i].islower():
#         lower += string[i]
#     elif string[i].isdigit():
#         digit += string[i]
#     else:
#         special += string[i]
#     i += 1
# print(upper, lower, digit, special)

# Write a program to convert all the lower case character to upper case
# characters present in a given string
# string = 'aBcD123' ==> out = 'ABCD123'

#string=input("Enter a string: ")
#new_string=''
#i=0
#while i<len(string):
#    if string[i].islower():
#        new_string+=string[i].upper()
#    else:
#        new_string+=string[i]
#    i+=1
#print(new_string)

# Write a program to convert all the lower case character to upper case
# character and upper case character to lower case character by keeping number
# and special character as it is
# string = 'aBcD123' ==> out =  'AbCd123'

#string=input('Enter a string: ')
#new_string=''
#i=0
#while i<len(string):
#    if string[i].islower():
#        new_string+=string[i].upper()
#    elif string[i].isupper():
#         new_string+=string[i].lower()
#    else:
#        new_string+=string[i]
#    i+=1
#print(new_string)

## Write a program to return the positions of vowels present in the given string
# string = 'aBcDEf123' ==> 0, 4

#string=input('enter string: ')
#i=0
#while(i<len(string)):
#    if string[i].lower() in 'aeiou':
#        print(i," ")
#    i+=1

##########FOR LOOP##########
## It helps to execute the same set of instructions number of times
## It moves all the way up to length of the collection

## syntax:

# for variable in collections:
#     TSB

## range(): It is an inbuilt function which helps to get the sequence of numbers in the given limit
## syntax: range(start_value, end_value+/-, updation)
## It always includes the start value and excludes the end value
## The default value of strat is 0 and default value of updation is 1
## It always gets the integer output

## Print the number from 0 to 10
# print(list(range(0, 11, 1)))
# print(tuple(range(11)))

## Print the alternate number from 0 to 20
# print(list(range(0, 21, 2)))

## Print the number from 10 to 0
# print(list(range(10, -1, -1)))

## Take the string and get character and index position

# string = 'hi'
# for index in range(len(string)):
#     print(index, string[index])

## WAP TO EXTRACT ALL THE DIGITS FROM THE GIVEN STRING

# string = input('enter the string: ')
# new_string = ''
# for char in string:
#     if char.isdigit():
#         new_string += char
# print(new_string)

##or

# string = input('enter the string: ')
# new_string = ''
# for index in range(len(string)):
#     if string[index].isdigit():
#         new_string += string[index]
# print(new_string)

## Note: The range() can be used in all the program, but it is enough to use only when the
## question is related to the index position

## wap to replace all the space in the given string with underscore using for loop(without using attribute)
## string = 'hello hii good morning'
## out = 'hello_hii_good_morning'

# string = input('enter the string: ')
# new_string = ''
# for char in string:
#     if char == ' ':
#         new_string += '_'
#     else:
#         new_string += char
# print(new_string)

## wap extract all the single value data item from the list
# only if the element at even index position

# List = eval(input('enter the list: '))
# new_list = []
# for index in range(len(List)):
#     if index % 2 == 0 and type(List[index]) in [int, float, complex, bool]:
#         new_list.append(List[index])
# print(new_list)

##or

# List = eval(input('enter the list: '))
# new_list = []
# for index in range(0,len(List),2):
#     if type(List[index]) in [int, float, complex, bool]:
#         new_list.append(List[index])
# print(new_list)

## wap to extract a string starting with vowel character
# list_ = ['Apple' , 'Google' , 'amazon', 'instagram', 'gmail', 'Extract']
# out = []
# for string in list_:
#     if string[0] in 'aeiouAEUIO':
#         out.append(string)
# print(out)

## wap to get the following output
# string = 'aaaabbbbbbccd'
##out: 'a4b6c2d1'

# char_count = ''
# for char in string:
#     if char not in char_count:
#         char_count += char + str(string.count(char))
# print(char_count)

# '' + 'a' + '4' ==> 'a4'
# 'a4' + 'b' + '6' ==> 'a4b6'

## wap to get the following output
# string = 'aaaabbbbbbccd'
## output: {'a':4 , 'b':6 , 'c':2 , 'd':1}

# char_count = {}
# for char in string:
#     char_count[char] = string.count(char)
# print(char_count)

##or

# char_count = {}
# for char in string:
#     if char not in char_count:
#         char_count[char] = 1
#     else:
#         char_count[char] += 1
# print(char_count)

## wap to extract all the non default  values from a list.
# List = [12, 0, 0.0, 'hii', []]   ===>  out = [12, 'hii']

# List = eval(input('enter the list: '))
# out = []
# for element in List:
#     if bool(element) == True:
#         out.append(element)
# print(out)

## wap to get the following output
# string = 'hello good evening'
##output: {'hello':5 , 'good':4 , 'evening' : 7}

# string = input('enter the string: ')
# word_length = {}
# for word in string.split():         ## ['hello', 'good', 'evening']
#     word_length[word] = len(word)
# print(word_length)

## wap to get the following output
# string = 'python java web selenium SQL manual C++ jscript'
##output: {'python':6 , 'java':4, 'selenium': 8, 'manual':6 }

# out = {}
# for word in string.split():         ## ['python', 'java', 'web', 'selenium', 'SQL', 'manual', 'C++', 'jscript']
#     if len(word) % 2 == 0:
#         out[word] = len(word)
# print(out)

## wap to get the following output
# list_ = ['python.py', 'google.com', 'yahoo.in', 'file.txt' , 'file.csv']
##output:['py', 'com', 'in', 'txt' , 'csv']

# extension = []
# for string in list_:
#     res = string.split('.')         ## ['python', 'py'], ['google', 'com']
#     extension.append(res[1])
# print(extension)

## wap to count the number of occurrence of the specified character in the given string without using the attribute
# string = 'occurrence'
# character = 'c'
## out = 3

# count = 0
# for char in string:
#     if char == character:
#         count += 1
# print(count)

## wap to replace the old character with new character without using the attribute
# string = 'occurrence'
# old_char = 'c'
# new_char = 'C'
## out = 'oCCurrenCe'

# new_string = ''
# for char in string:
#     if char == old_char:
#         new_string += new_char
#     else:
#         new_string += char
# print(new_string)

## wap to get the following output
# l = [1,2,3,-5,'hello','hii' ,-4]
##o:[1,2,3,5,4]

# out = []
# for element in l:
#     if type(element) == int:
#         if element > 0:
#             out.append(element)
#         else:
#             out.append(-element)
# print(out)

##or

# out = []
# for element in l:
#     if type(element) == int:
#         out.append(abs(element))    ## abs(): It is inbuilt function, which converts the -ve num to +ve where _ve remains the same
# print(out)

# wap to get the following output.
# In='hello'
# Out={0:’h’,1:’e’,2:’l’,3:’l’,4:’e’}

# index_char = {}
# for index in range(len(In)):
#     index_char[index] = In[index]
# print(index_char)

# Wap to get the following output.
# In='127342'
# Out=’242173’

# Even, Odd = '', ''
# for digit in In:
#     if int(digit) % 2 == 0:
#         Even += digit
#     else:
#         Odd += digit
# print(Even + Odd)

## WAP to Print All Divisors of a Number
##6 ==> 1, 2, 3, 6

# Wap to extract all the string values present in list only if the string is palindrome.
# List = [23, 3.4, 'hii', 'mom', '121']
# out = ['mom', '121']

## wap to get the following output
# list_ = ['python.py', 'google.com', 'yahoo.in', 'file.txt' , 'file1.csv']
# out = {'python': 'py', 'google':'com', 'yahoo':'in', 'file':'txt', 'file1':'csv'}

## wap to get the following output
# string = 'python java web selenium SQL manual C++ jscript'
##output: {'python':6 , 'java':4 , 'web':'bew', 'selenium': 8 , 'SQL':'LQS' , 'manual':6 , 'C++':'++c', 'jscript':'tpircsj'}

## wap to get the following output
# string = 'hello good evening'
##output: {'hello':'olleh' , 'good':'doog' , 'evening' : 'gnineve'}

## wap to get the following output
# string = 'hello good evening'
##output: {'hello':'ho' , 'good':'gd' , 'evening' : 'eg'}

















