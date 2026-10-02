##########COMPREHENSION#########
## List Comprehension: It helps to create the new list

## syntax:

# var = [exp for variable in collections]

# var = [exp for variable in collections if condition]

# var = [exp1 if condition else exp2 for variable in collections]


## WAP TO GET THE SQUARE OF INDIVIDUAL NUMBER IN THE GIVEN LIST
# list_ = [1,2,3,4,5,6]      ## [1,4,9,16,25,36]

# out = []
# for num in list_:
#     out.append(num ** 2)
# print(out)

##or

# res = [num ** 2 for num in list_]
# print(res)

##or

# print([num ** 2 for num in list_])

## WAP TO GET THE CUBE OF INDIVIDUAL NUMBER ONLY IF THE NUMBER IS EVEN IN THE GIVEN LIST
# list_ = [1,2,3,4,5,6]
# print([num ** 3 for num in list_ if num % 2 == 0])

## TAKE A STRING INPUT, IF THE LENGTH WORD IS EVEN GET THE STRING AS IS ELSE GET THE REVERSE STRING
# string = 'hello hiii good morning'
# print([word if len(word) % 2 == 0 else word[::-1] for word in string.split()])

## WAP TO GET THE FOLLOWING OUTPUT
# list_ = [1, 2, 3, 4]
# out = [1, 2, 9, 64]       ## raise the number with its index position
# print([list_[index] ** index for index in range(len(list_))])

## GET THE STRING HAVING MORE THAN OR EQUAL TO 5 CHAR AND ENDSWITH e
# names = ["John", "Jane", "Mikee", "Anna", "James", "Mary"]
# print([name for name in names if len(name) >= 5 and name.endswith('e')])
##or
# print([name for name in names if len(name) >= 5 and name[-1] == 'e'])


# WAP TO CREATE A LIST OF NUMBER WHICH IS DIVISIBLE BY 3
# LIST_ = [4,6,4,5,73,8,3,7,9,44]
# print([num for num in LIST_ if num % 3 == 0])

################################################################################################

## Set Comprehension: It helps to create the new set

## syntax:

# var = {exp for variable in collections}

# var = {exp for variable in collections if condition}

# var = {exp1 if condition else exp2 for variable in collections}

##1. WAP TO GET THE FOLLOWING OUTPUT
# string = 'this is python session'
#  out = {('this', 4), ('is', 2), ('python', 6), ('session', 7)}
# print({(word, len(word)) for word in string.split()})

##2. Wap to get all the vowels in the given string
# string = 'this is python session'
# print({char for char in string if char in 'aeiouAEIOU'})

##. take a list integer number, if the number is even get square else get cube
# list_ = [1,2,3,4,5,6,7,8,9]
# print({num ** 2 if num % 2 == 0 else num ** 3 for num in list_})

# CREATE A SET OF PALINDROME WORDS
# words = ['madam', 'python', 'level', 'radar']
# print({word for word in words if word == word[::-1]})









