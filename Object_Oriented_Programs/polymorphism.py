
## It is the process of using the same method/operator to work on different operation

## There are 3 types

##1. Operator Overloading
##2. Method Overloading
##3. Method Overriding

#####################################################################################

##1. Operator Overloading: WKT all the operator works on inbuilt classes but not on user defined class
## to make operator work on user defined class we use operator overloading

class Sam:
    def __init__(self,a):
        self.a = a

    def __add__(self, other):
        return self.a + other.a

    def __sub__(self, other):
        return self.a - other.a

    def __mul__(self, other):
        return self.a * other.a

S1 = Sam(12)
S2 = Sam(13)
# print(dir(Sam))
# print(S1.__add__(S2))
# print(S1.a, S2.a)
# print(S2.__sub__(S1))
# print(S1.__mul__(S2))

########################################################################################

##2. Method Overloading: Python doesn't support method overloading by default
## Here in this case we will have same method name but different number of args in a same class

class Demo1:
    def add(self,a,b):
        return a + b

    def add(self, a, b, c):
        return a + b+ c

D1 = Demo1()
# print(D1.add(2, 4))
# print(D1.add(2, 4, 8))

## use default value

class Demo2:
    def add(self, a, b, c = 0):
        return a + b + c

D2 = Demo2()
# print(D2.add(12, 3))
# print(D2.add(12, 3, 5))

## use *args

class Demo3:
    def add(self, *args):
        print(args)
        Total = 0
        for num in args:
            Total += num
        return Total

D3 = Demo3()
print(D3.add())
print(D3.add(1,2,3,4,5,5,6,7,8,8,9,8,7,6,6,5,7))














