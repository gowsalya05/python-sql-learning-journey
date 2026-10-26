
a = 100
b = a
# print(a, b)
# print(id(a), id(b))

####################################################################################

def Sam():
    print('hello')
# Sam()
# print(Sam)

# x = Sam
# print(x)

# x()

####################################################################################

def dummy(some_thing):
    print(some_thing)
# dummy(Sam)

def dummy1(some_thing):
    print(some_thing)
    res = some_thing()
    return res
# dummy1(Sam)

###############################################################################

def greet():
    print('Hello Good Morning')

def greeting(name):
    print(f'hello {name}')

def Wish(name, wish):
    print(f'Hello {wish} myself {name}')

def dummy2(some_thing):
    print(some_thing)
    return some_thing('Sonu', 'Good Morning')
# dummy2(greet)
# dummy2(greeting)
# dummy2(Wish)

##########################################################################

def dummy3(some_thing, *args):
    print(some_thing, args)
    return some_thing(*args)
# dummy3(greet)
# dummy3(greeting, 'Sonu')
# dummy3(Wish, 'Sonu', 'Good Morning')

##########################################################################

def outer(some_thing):
    print(some_thing)
    def inner(*args, **kwargs):
        print(args, kwargs)
        return some_thing(*args, **kwargs)
    return inner('Monu', wish = 'Good Morning')
# outer(greeting)
# outer(Wish)

##########################################################################

## add few seconds of delay

def add(a, b):
    return a + b

import time

def delay(some_thing):
    print(some_thing)
    def wrapper(a, b):
        time.sleep(4)
        return some_thing(a, b)
    return wrapper(12, 13)
# print(delay(add))

####################################################################################

## Decorators: It helps to add extra functionality into the function without changing anything in the original code

def delay(some_thing):
    print(some_thing)
    def wrapper(a, b):
        time.sleep(4)
        return some_thing(a, b)
    return wrapper

# @delay
def add(a, b):
    return a + b
# print(add(12, 22))

####################################################################################

## create the standalone function which takes integer input returns the same output
## create extra function which add the functionality to convert the negative to positive and positive be the same
## decorate the standalone function

def Get_Positive_Output(some_thing):
    print(some_thing)
    def wrapper(number):
        res = some_thing(number)
        return abs(res)
    return wrapper

# @Get_Positive_Output
def Get_Number(number):
    return number
# print(Get_Number(-5))

#########################################################################################

## create the standalone function which takes integer input returns the same output
## create extra function which add the functionality, get the number if it is even
# else get message 'the number is odd'
## decorate the standalone function

def Check_Even_Odd(some_thing):
    print(some_thing)
    def wrapper(number):
        if number % 2 == 0:
            return some_thing(number)
        else:
            return "The number is odd"
    return wrapper

# @Check_Even_Odd
def Get_Number(number):
    return number
# print(Get_Number(54))

########################################################################################

## create the standalone function which gets string as input and return tha same as output
## create one more function which have the functionality to reverse the string
## decorate the standalone function

def Reverse_String(some_thing):
    print(some_thing)
    def wrapper(string):
        res = some_thing(string)
        return res[::-1]
    return wrapper

# @Reverse_String
def Get_String(string):
    return string
# print(Get_String('hello'))

########################################################################################

## create the standalone function which gets string "Hello Hii" as input and return tha same as output
## create one more function which have the functionality to replace "Hii" by "bye"
## decorate the standalone function

def Replace_Substring(some_thing):
    print(some_thing)
    def wrapper(string):
        res = some_thing(string)
        return res.replace('hii','bye')
    return wrapper

# @Replace_Substring
def Get_String(string):
    return string
# print(Get_String('hello hii'))

##################################################################################

## create the standalone function which gets string input and return the same
## create one more function which have the functionality to execute the output 3 times
## decorate the standalone function

def Execute_3_Times(some_thing):
    print(some_thing)
    def wrapper(string):
        for i in range(3):
            print(some_thing(string))
    return wrapper

# @Execute_3_Times
def Get_String(string):
    return string
# Get_String('hello hii')

########################################################################################

## create the standalone function which takes any number of args and returns the same
## create a function which have the functionality
# to get the total number of args passed and also invoke it
## decorate the standalone function

def Get_num_of_args(some_thing):
    print(some_thing)
    def wrapper(*args, **kwargs):
        print(f'The total number args passed are {len(args) + len(kwargs)}')
        return some_thing(*args, **kwargs)
    return wrapper

# @Get_num_of_args
def get_args(*args, **kwargs):
    print(args, kwargs)
# get_args(1,2,3,4)
# get_args(a = 1, b = 2)
# get_args(1,2,3,a = 1, b = 2)











