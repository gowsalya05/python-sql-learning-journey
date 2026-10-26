
# a = 1               ## Here "a" is one of the objects of integer class
# print(type(a))
#
# l = [1,2,3]         ## Here "l" is one of the objects of list class
# print(type(l))
#
# def Sam():
#     pass
# print(type(Sam))    ## Here "Sam" is one of the objects of function class

#####################################################################################

## class ==> It is a blueprint which consist of properties/functionalities

## syntax:

# class cname:
#     properties/functionalities

## object: It is an instance of class and for a single class we can have n number of objects

## syntax: obj = cname()

######################################################################################

## Type of states/properties: Inside the class we can have 2 types of states/properties

##1. class/generic members: These are the members of class which are same for all the objects
##2. object/specific members: These are the members of object which are different for different objects

## Example

# class         : Company
# object        : Employees
# class members : Company_Name, Company_Loc, CEO, Rules and Regulations
# object members: Emp_Name, Dept, salary, designation, emp_id

##############################################################################################

class Point:
    a = 10
    b = 20      ## Here Point is a class name
    c = 30      ## Here "a", "b" and "c" are the class members

P1 = Point()    ## Here "P1" and "P2" are the objects for class Point
P2 = Point()

## syntax to access the class members: classname.classmembers
## syntax to access the object members: objectname.objectmembers/objectname.classmember

print(Point.a, Point.b, Point.c)
print(P1.a, P1.b, P1.c)
print(P2.a, P2.b, P2.c)
print(dir(Point))
print(dir(P1))
print(dir(P2))         ## We are able to access the class members wrt the object because all the class members are present in directory of object
print(Point.__dict__)  ## When we use the __dict__ on the class name it gets all the class members in the form of dict
print(P1.__dict__)     ## when we use __dict__ on the object name it will get all the object members in the form of dict
print(P2.__dict__)     ## Here we get {} because we have not created any object members

## syntax to modify the class members: classname.classmember = new_value
## syntax to modify the object members: objectname.objectmember = new_value/objectname.classmember = new_value

Point.a = 40
P1.b = 50

print(Point.a, Point.b, Point.c)
print(P1.a, P1.b, P1.c)
print(P2.a, P2.b, P2.c)

## when we modify something wrt class name it modifies in all the objects
## When we modify something wrt object it modifies only in that particular object

######################################################################################3

class School:
    S_Name = 'Qspiders'
    S_Loc = 'Bangalore'

S1 = School()
S2 = School()

print(School.S_Name, School.S_Loc)
print(S1.S_Name, S1.S_Loc)
print(S2.S_Name, S2.S_Loc)
print(dir(School))
print(dir(S1))
print(dir(S2))
print(School.__dict__)
print(S1.__dict__)
print(S2.__dict__)

S1.name = 'Sonu'
S1.age = 12
S1.ph_no = 9765456742

S2.name = 'Monu'
S2.age = 13
S2.ph_no = 76545678987

print(S1.__dict__)
print(S1.name, S1.age, S1.ph_no)

print(S2.__dict__)
print(S2.name, S2.age, S2.ph_no)

print(dir(School))
print(dir(S1))
print(dir(S2))

## We can't access the object member wrt class because these are not stored in the directory
## of object but all the class members can be accessed wrt to object

###########################################################################################

class School:
    S_Name = 'Qspiders'
    S_Loc = 'Bangalore'

S1 = School()
S2 = School()

print(School.S_Name, School.S_Loc)
print(S1.S_Name, S1.S_Loc)
print(S2.S_Name, S2.S_Loc)
print(dir(School))
print(dir(S1))
print(dir(S2))
print(School.__dict__)
print(S1.__dict__)
print(S2.__dict__)

def Details(obj, name, age, ph_no):     ## obj is responsible to get the address of the object for which we want to create the object member
    obj.name = name     ## S1.name = 'Sonu'
    obj.age = age       ## S1.age = 12
    obj.ph_no = ph_no   ## S1.ph_no = 876545678

# Details(S1, 'Sonu', 12, 876545678)
# print(S1.__dict__)
# print(S1.name, S1.age, S1.ph_no)
#
# Details(S2, 'Monu', 13, 9876545678)
# print(S2.__dict__)
# print(S2.name, S2.age, S2.ph_no)

