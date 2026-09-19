
## It is the process of converting one type data into another type

## syntax: dest_var = dest_type(source_var)

## Integer

Integer = 395
Float = float(Integer)
print(Float)
print(complex(Integer))
print(complex(Integer, 45))
print(bool(Integer))
print(bool(0))
print(str(Integer))
print(type(str(Integer)))
# print(list(Integer))
# print(tuple(Integer))
# print(set(Integer))
# print(dict(Integer))

## Float

Float = 9.34
print(int(Float))
print(complex(Float))
print(complex(Float, 45.6))
print(bool(Float))
print(bool(0.0))
print(str(Float))
# print(list(Float))
# print(tuple(Float))
# print(set(Float))
# print(dict(Float))

## Complex

Complex = 45-78j
print(Complex)
# print(int(Complex))
# print(float(Complex))
print(bool(Complex))
print(bool(0j))
print(str(Complex))
print(type(str(Complex)))
# print(list(Complex))
# print(tuple(Complex))
# print(set(Complex))
# print(dict(Complex))

## boolean

a, b = True, False
print(int(a), int(b))
print(float(a), float(b))
print(complex(a), complex(b))
print(complex(a, 45), complex(b,6.7))
print(str(a), str(b))
print(type(str(a)), type(str(b)))
# print(list(a), list(b))
# print(tuple(a), tuple(b))
# print(set(a), set(b))
# print(dict(a), dict(b))

## string

string = 'abc123#$5'
# print(int(string))
# print(float(string))
# print(complex(string))
print(bool(string))
print(bool(''))
print(list(string))
print(tuple(string))
print(set(string))
# print(dict(string))

string = '1234'
print(int(string))
print(float(string))
print(complex(string))
print(bool(string))
print(bool(''))
print(list(string))
print(tuple(string))
print(set(string))
# print(dict(string))

## List

List = [23, 4.4, 8-9j, 'hii']
# print(int(List))
# print(float(List))
# print(complex(List))
print(bool(List))
print(bool([]))
print(str(List))
print(tuple(List))
print(set(List))
# print(dict(List))

List = ['ab', [1,2], (4,5), {11, 22}]
print(dict(List))
## We can convert the list to dict only when each and every element of list is of length exactly 2

## Dict

Dict = {'a': 'b', 1: 2, 4: 5, 11: 22}
# print(int(Dict))
# print(float(Dict))
# print(complex(Dict))
print(bool(Dict))
print(bool({}))
print(str(Dict))
print(list(Dict))
print(list(Dict.values()))
print(list(Dict.items()))
print(tuple(Dict))
print(tuple(Dict.values()))
print(tuple(Dict.items()))
print(set(Dict))
print(set(Dict.values()))
print(set(Dict.items()))

## Tuple

Tuple = (23,4.4,'hii',8-9j)
#print(int(Tuple))
#print(float(Tuple))
#print(complex(Tuple))
print(bool(Tuple))
print(bool())
print(str(Tuple))
print(list(Tuple))
print(set(Tuple))
#print(dict(Tuple))

Tuple=('ab', [1,2], (4,5), {11, 22})
print(dict(Tuple))
## We can convert the tuple to dict only when each and every element of list is of length exactly 2

Set={23,4.4,'hii',8-9j}
#print(int(Set))
#print(float(Set))
#print(complex(Set))
print(bool(Set))
print(bool(()))
print(str(Set))
print(list(Set))
print(tuple(Set))
#print(dict(Set))

Set={'ab', (4,5)}
print(dict(Set))
## Mutable datatypes are not allowed inside Set


