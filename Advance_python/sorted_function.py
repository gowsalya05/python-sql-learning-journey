
## sorted(): It is an inbuilt function, which helps to arrange the elements in particular order
## It will not modify anything in the original collection
## It always gets the list output

## Sorting the list
List = [23456543234567, 876543234567, 876, 1, 100, 4, 989]
print(sorted(List))
print(sorted(List, reverse = True))
print(List)

## sorting the list
Tuple = (23456543234567, 876543234567, 876, 1, 100, 4, 989)
print(sorted(Tuple))
print(sorted(Tuple, reverse = True))
print(Tuple)

## sorting the set
Set = {23456543234567, 876543234567, 876, 1, 100, 4, 989}
print(sorted(Set))
print(sorted(Set, reverse = True))
print(Set)

## sorting the string
String = 'Python'
print(sorted(String))
print(sorted(String, reverse = True))

## sorting the dict
Dict = {'y':3, 'a':100, 'o':4, 'd':60000}
print(sorted(Dict))
print(sorted(Dict.values()))
print(sorted(Dict.items()))

#################################################################################

## sorting the list of string based on the length
List = ['amazon', 'youtubeeeeeeeeeeeeeeeee', 'emaillllllllllllllllllllllllllllllllllllll', 'gmail']
print(sorted(List))
print(sorted(List, key = len))
print(sorted(List, key = len, reverse = True))

##2. sorting the list based on last character of the string
list_ = ['bv', 'aw', 'dt', 'cu']
print(sorted(list_))
print(sorted(list_, key = lambda item:item[1]))

##3. sorting the list based on the temperature
temperatures = [('bangalore', 39), ('delhi',40), ('chennai', 38), ('mumbai', 41)]
print(sorted(temperatures))
print(sorted(temperatures, key = lambda item:item[-1]))

## sorting the dict based on values
dict_ = {'a':4, 'b':3, 'c':1, 'd':9}
print(sorted(dict_.items()))
print(dict_.items())
print(sorted(dict_.items(), key = lambda item:item[1]))

# sorting the list based on the first element of inner list
list_ = [[2,6], [7,3], [3,8], [8,7], [9,7], [4,9]]

# sorting the list based on the last element of inner list
list_ = [[2,6], [7,3], [3,8], [8,7], [9,7], [4,9]]

## find the longest substring
string = 'this is programming language and programming is fun'


