#######COPY OPERATION######
## It is the process of duplicating the content of one variable to another variable

## There are 3 types

##1. General Copy
##2. Shallow Copy
##3. Deep Copy

###################################################################################

##1. General Copy: It helps to copy the address of one variable into another variable
### It supports all the datatypes

## syntax:

# source_var = data
# dest_var = source_var

a = 100     ## a is source_var
b = a       ## b is dest_var
print(a, b)
print(id(a), id(b))

List1 = [12, 3.4, 3-8j, [122, 'hii', 444.5]]      ## List1 is source_var
List2 = List1                                     ## List2 is dest_var
print(List1, List2)

List1[0] = 14
print(List1, List2)
print(id(List1), id(List2))

List1[3][2] = 33.4
print(List1, List2)
print(id(List1[3]), id(List2[3]))

## After general copy, modification wrt one variable will modify the other one
## because both variables will point to same address even it is true for nested collection

###############################################################################################

##2. Shallow Copy:It is a copy operation, in which the values of source variable will be copied to another
## memory location with address
## The shallow copy can be used only on those datatypes which is having copy attribute in it

## syntax

# source_var = data
# dest_var = source_var.copy()

List1 = [12, 3.4, 3-8j, [122, 'hii', 444.5]]      ## List1 is source_var
List2 = List1.copy()                              ## List2 is dest_var

List1[1] = 4.4
print(List1, List2)
print(id(List1), id(List2))

List1[3][1] = 'hello'
print(List1, List2)
print(id(List1[3]), id(List2[3]))

## After shallow copy, modification wrt one variable will not modify the other one because
## the address of both the variables will be different
## but in case of nested collection modification wrt one variable will modify the other one
##  because both nested collection will point to same address

########################################################################################

## Deep Copy: It is a copy operation,in which the values of source variable will be duplicated along with nested collection
## in different memory location

## syntax:

# from copy import deepcopy
# source_var = data
# dest_var = deepcopy(source_var)

from copy import deepcopy
List1 = [12, 3.4, 3-8j, [122, 'hii', 444.5]]      ## List1 is source_var
List2 = deepcopy(List1)                           ## List2 is dest_var

List1[2] = 44-9j
print(List1, List2)
print(id(List1), id(List2))

List1[3][0] = 222
print(List1, List2)
print(id(List1[3]), id(List2[3]))

## After deep copy, modification wrt one variable will not modify the other one even in nested collection
## because the address will completely different










