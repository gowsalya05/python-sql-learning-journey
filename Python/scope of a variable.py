## Scope of Variable: The variables we create works based on the location where it is present

## There are 2 types

##1. Global Variable
##2. Local Variable

################################################################################################

##1. Global Variable: These are the variables which we create outside the function
## and can be accessed both inside and outside the function

##1.

# a = 10
# b = 20              ## here "a" and "b" are the global variables
# def Sam():
#     return a + b
# print(Sam())

##2.

# a = 100               ## here "a" and "b" are the global variables
# b = 200
# def Sam():
#     print(a + b)
#     print(b - a)
# print(b, a)
# Sam()
# b = 300
# print(a > b)

######################################################################################

##2. Local variables: These are variables which we create inside the function
## it can access only inside not outside the function

##1.

# a = 100
# b = 300                 ## here "a" and "b" are the global variables
# def Demo():
#     b = 200             ## here "b" is a local variable
#     print(a + b)
# Demo()

## In this example the control takes the value of "b" as 200 because the preference will be
## given to the local variable first, it moves to the global scope only when we don't have a local variable

##2.

# a = 10
# b = 20                      ## here "a" and "b" are the global variables
# def outer():
#     print(a + 50, b + 50)
#     print(a == b)
#     m, n = 300, 200         ## here "m" and "n" are the local variables
#     print(m - n)
#     def inner():
#         print(m + n)
#         print(m > n)
#     inner()
# print(b + a)
# outer()

##3.

# x = 100                 ## Here "x" is a global variable
# def outer():
#     x = 200             ## Here "x" is a local variable for outer() and non-local variable for inner()
#     print(x)
#     def inner():
#         x = 300         ## Here "x" is a local variable for inner()
#         print(x)
#     print(x)
#     inner()
# print(x)
# outer()

##4.

# a = 50
# def Demo():
#     a = a + 10
#     return a
# print(Demo())

## Here the control is not accessing the global value because as we already know the control
## moves to global scope only when the local variable not present
## but here we already have a local variable "a" so it is not accessing the global value

##5.

# a = 50
# def Demo():
#     global a        ## The global keyword helps to access and modify the global value inside the function
#     a = a + 10
#     return a
# print(a)
# print(Demo())
# print(a)

##6.

# a = 10
# def outer():
#     a = 20
#     print(a)
#     def inner():
#         global a
#         a = a + 100
#         print(a)
#     print(a)
#     inner()
#     print(a)
# print(a)
# outer()
# print(a)

##7.

# a = 10
# def outer():
#     a = 20
#     print(a)
#     def inner():
#         nonlocal a          ## It helps to access and modify the nonlocal variable inside the nested function
#         a = a + 100
#         print(a)
#     print(a)
#     inner()
#     print(a)
# print(a)
# outer()
# print(a)

##########################################################################################
