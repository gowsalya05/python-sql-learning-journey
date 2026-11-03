
## It helps to avoid the direct access of attribute/methods outside the class

## There are 3 types

##1. Public Access Specifiers
##2. Protected Access Specifiers
##3. Private Access Specifiers

##########################################################################################

##1. Public Access Specifiers

class School:
    def __init__(self, name):
        self.name = name

    def Stu_Info(self):
        print(f'Hello myself {self.name}')

S = School('John')
# print(S.name)
# S.Stu_Info()

##########################################################################################

##1. Protected Access Specifiers

class School:
    def __init__(self, name, roll_no):
        self.name = name
        self._roll_no = roll_no

    def _Stu_Info(self):
        print(f'Hello myself {self.name} having roll_no {self._roll_no}')

S = School('John', 123)
# print(S.name, S._roll_no)
# S._Stu_Info()

############################################################################################

##3. Private Access Specifiers

class School:
    def __init__(self, name, roll_no, age):
        self.name = name
        self._roll_no = roll_no
        self.__age = age

    def Stu_Info(self):
        print(f'Hello myself {self.name} having roll_no {self._roll_no} of age {self.__age}')

S = School('John', 123, 12)
# print(S.name, S._roll_no)
# print(S.__age)
# S.Stu_Info()

########################################################################################

## Since the private attribute restrict the user not to access outside the class we use it in
## data hiding process

## getter and setter

class bank:
    def __init__(self, name, balance):
        self.name = name
        self.__balance = balance

    def getter(self):
        return self.__balance

    def setter(self, new):
        self.__balance = new

B = bank('abc', 200000)
# print(B.getter())
# B.setter(400000)
# print(B.getter())

###############################################################################

## property()

class School:
    def __init__(self, name, grade):
        self.name = name
        self.__grade = grade

    def getter(self):
        return self.__grade

    def setter(self, new):
        self.__grade = new

    res = property(getter, setter)

S = School('abc', 'B+')
# print(S.res)
# S.res = 'A+'
# print(S.res)

##3. @property

class bank:
    def __init__(self, name, balance):
        self.name = name
        self.__balance = balance

    @property
    def balance(self):
        return self.__balance

    @balance.setter
    def balance(self, new):
        self.__balance = new

b = bank('abc', 3000)
print(b.balance)
b.balance = 90000
print(b.balance)

















