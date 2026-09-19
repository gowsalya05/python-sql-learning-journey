
## It is a collection of characters(alphabets, numbers or special character)
## enclosed inside the single or double or triple quotes

## syntax:

# var = 'val1val2......'
##or
# var = "val1val2....."
##or
# var = '''val1val2......'''

string = 'Hello Good Morning 123$%^'
print(string)

string = "Hello Good Morning 123$%^"
print(string)

string = '''Hello Good Morning 123$%^'''
print(string)

## Reason for using double quotes: When the string already have single quote in it,
## we will enclose the entire string in double quotes

# string = 'This is world's best place'
# print(string)

##1. using backslash(\) ===> this is not pythonic way

string = 'This is world\'s best place'
print(string)

##2. double quotes

string = "This is world's best place"
print(string)

## Reason for using triple quotes: When we want to store multi line string we use triple quotes

# sentence = 'Hello Good Morning
# How are you?'
# print(sentence)

# sentence = "Hello Good Morning
# How are you?"
# print(sentence)

sentence = '''Hello Good Morning
How are you?'''
print(sentence)

##############################################################################

## Customizing the String

name = 'Maya'
age = 25

age = 27

## Hello myself Maya of age 25 years

##1. Using f-string

print(f'Hello myself {name} of age {age} years')

# print(f'Hello myself {name} of age {age} years from place {place}')
## It throws error because the variable place is not pre-defined with any value

##2. Using .format()

print('Hello myself {} of age {} years'.format(name, age))
print('Hello myself {} of age {} years'.format(age, name))

####################################################################################

## len(): It is an inbuilt function, which helps to get the number of characters we have in the collection

string = 'python'
print(len(string))

string = '23456654323456ukjgfduioiuytreertRTOIUYTRYUIKCVBNHGROIU$*&^%$%^&*(*&fghjhgcxcvbnbvcdfgL'
print(len(string))
print(len('hello'))

####################################################################################

## Indexing: It is the sub-address given to each and every block

## There are 2 types

##1. +ve : 0(L to R)
##2. -ve : -1(R to L)

## syntax: variable[index]

string = 'Python Py'
print(string)
print(string[1])
print(string[5])
print(string[-2])

## +ve_index = len(collection) + (-ve_index)  ## To convert the -ve position to +ve

print(9 + (-2))
print(string[7])
print(type(string))

##################################################################################################

print(dir(string))
## dir(): It is an inbuilt function, which helps to get the directory of the given datatype
## syntax: variable.attribute()

## capitalize()

string = 'hello good morning'
print(string.capitalize())
string = 'hEllO GooD mOrnIng'
print(string.capitalize())
string = 'Hello good morning'
print(string.capitalize())

## startswith(char/sub-string)

string = 'hello good morning'
print(string.startswith('H'))
print(string.startswith('h'))
print(string.startswith('hello'))

## endswith(char/sub-string)

string = 'hello good morning'
print(string.endswith('g'))
print(string.endswith('Ing'))
print(string.endswith('ing'))

## isalpha()

string = 'HELLO hii'
print(string.isalpha())
string = 'HELLOhii'
print(string.isalpha())

## isalnum()

string = 'Hello'
print(string.isalnum())
string = '1234'
print(string.isalnum())
string = 'abc123'
print(string.isalnum())
string = 'abc 123'
print(string.isalnum())

## isdigit()

string = '1234 '
print(string.isdigit())
string = '1234'
print(string.isdigit())

## isupper()

string = 'Hello HII'
print(string.isupper())
string = 'HELLO HII #$345'
print(string.isupper())

## islower()

string = 'Hello'
print(string.islower())
string = 'hello 876%^&*'
print(string.islower())

## istitle()

string = 'Hello good morning'
print(string.istitle())
string = 'Hello gOoD moRning'
print(string.istitle())
string = 'Hello Good morning'
print(string.istitle())
string = 'Hello Good Morning'
print(string.istitle())

## upper()

string = 'Hello HII 123#$%'
print(string.upper())

## lower()

string = 'hello HIII 234@#@'
print(string.lower())

## title()

string = 'Hello good morning'
print(string.title())
string = 'Hello gOoD moRning'
print(string.title())
string = 'Hello Good morning'
print(string.title())
string = 'Hello Good Morning'
print(string.title())

## replace(old_string, new_string)

string = 'Good Morning'
print(string.replace('morning', 'Evening'))
print(string.replace('Morning', 'Evening'))
print(string.replace('o', 'O'))

## count(char/sub-string)

string = 'hello'
print(string.count('l'))
string = 'hellllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllo'
print(string.count('l'))

string = 'helo hi hi hi hi'
print(string.count('hi'))
print(string.count('P'))

## swapcase()

string = 'hello HII 123*()'
print(string.swapcase())

## split()

string = 'Hello Good Morning'
print(string.split())
string = 'Hello_Good_Morning'
print(string.split())
print(string.split('_'))
print(string.split('M'))

## strip()

string = '                             hello                            '
print(string)
print(string.strip())
string = '###############################hello#############################'
print(string.strip('#'))


## lstrip()

string = '                             hello                            '
print(string)
print(string.lstrip())
string = '###############################hello#############################'
print(string.lstrip('#'))

## rstrip()

string = '                             hello                            '
print(string)
print(string.rstrip())
string = '###############################hello#############################'
print(string.rstrip('#'))

## index(), rindex()

string = 'hello'
print(string[1])           ## Indexing: It helps to fetch the character at given position
print(string.index('e'))   ## index(): It helps to fetch the index position of given character
print(string.index('l'))   ## index() will always get the lowest index position
print(string.rindex('l'))  ## rindex() will always get the highest index position
print(string.rindex('e'))
# print(string.index('U'))
# print(string.rindex('U'))

## find() and rfind()

string = 'hello'
print(string.find('h'))
print(string.rfind('h'))
print(string.find('l'))         ## find() will always get the lowest index position
print(string.rfind('l'))        ## rfind() will always get the highest index position
print(string.find('P'))
print(string.rfind('P'))

#####################################################################################

print(bool(''))   ## The default value of string is '' which is internally boolean False
print(bool(' '))  ## This gets True output because we have the space in between

#####################################################################################

## variable[index] = new_value

string = 'python'
# string[0] = 'P'             ## The strings are immutable in nature(It doesn't allow the user to modify the collection)

print(string.upper())
print(string)
















