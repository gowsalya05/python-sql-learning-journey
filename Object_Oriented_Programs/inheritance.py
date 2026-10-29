
## It is the process of deriving the properties from one class to another class
## The properties from which we inherit is called as parent/super/base class
## The properties to which we inherit is called as child/sub/derived class
## When we inherit the properties from parent to child it will inherit each and every thing
## if we don't want certain properties to be same parent we can re-define in child class

## There are 5 types

##1. Single Level Inheritance
##2. Multi Level Inheritance
##3. Multiple Inheritance
##4. Hierarchical Inheritance
##5. Hybrid Inheritance

####################################################################################

## Constructor Chaining: It helps to invoke the constructor of parent into the child class

## syntax:

##1. super().__init__(args)
##2. ParentName.__init__(self, args)

class School:
    def __init__(self, name, age, ph_no):
        self.name = name
        self.age = age
        self.ph_no = ph_no

    def Info(self):
        print('You are using School class')

# S = School('abc', 12, 7654567899)
# print(S.name, S.age, S.ph_no)
# S.Info()

class New_School(School):
    def __init__(self, name, age, ph_no, Class, Section):
        # super().__init__(name, age, ph_no)   ##or
        School.__init__(self, name, age, ph_no)
        self.Class = Class
        self.Section = Section

    def Info(self):
        print('You are using New_School class')

# N = New_School('xyz', 14, 87654456787, '7th', 'A')
# print(N.name, N.age, N.ph_no, N.Class, N.Section)
# N.Info()

################################################################################################

##1. Single Level Inheritance: It is the process of deriving the properties from single parent to single child class

## syntax:

# class Parent_Class:
#     TSB
#
# class Child_Class(Parent_Class):
#     TSB

class ShoppingCart:
    Product = {'iphone':8, 'imac':7, 'ipad':5, 'iwatch':6}
    Price = {'iphone':8000, 'imac':7000, 'ipad':5000, 'iwatch':6000}

    def __init__(self):
        self.cart = []

    def add_items(self, name, quantity = 1):
        if name not in self.Product.keys():         ## ['iphone', 'imac', 'ipad', 'iwatch']
            raise Exception("The product not available")
        elif self.Product[name] > quantity:
            self.cart.append({'Name':name, 'Price':self.Price[name], 'Quantity':quantity})
        else:
            raise Exception("Product out of stock")

S = ShoppingCart()
print(S.cart)
# S.add_items('oneplus')
# S.add_items('iphone', 40)
S.add_items('iphone', 4)
S.add_items('imac', 5)
S.add_items('ipad', 3)
S.add_items('iwatch')
print(S.cart)




