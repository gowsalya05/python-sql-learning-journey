###########  NESTED FOR LOOP
## We will have the for loop inside another loop

## syntax:

# for variable in collections:
#     for var in variable:
#         TSB

## WAP TO GET THE FOLLOWING OUTPUT
# list_ = ['hello', 'hai', 'good', 'morning']
# out = ['eo', 'ai', 'oo', 'oi']

# out = []
# for string in list_:
#     vowel = ''
#     for char in string:
#         if char in 'aeiouAEIOU':
#             vowel += char
#     out.append(vowel)
# print(out)

## WAP TO GET THE FOLLOWING OUTPUT
# LIST_ = [123, 32, 31, 21]
# OUT = [6, 5, 4, 3]

# out = []
# for number in LIST_:
#     Sum = 0
#     for digit in str(number):       ## '123'
#         Sum += int(digit)
#     out.append(Sum)
# print(out)

##. WAP TO GET THE FOLLOWING OUTPUT
# list_ = ['HEllo@', 67, 7-9j, 'goOD#']
# out = ['heLLO', 67, (7-9j), 'GOod']

# out = []
# for element in list_:
#     if type(element) == str:
#         new_string = ''
#         for char in element:
#             if char.islower():
#                 new_string += char.upper()
#             elif char.isupper():
#                 new_string += char.lower()
#         out.append(new_string)
#     else:
#         out.append(element)
# print(out)

##or

# out = []
# for element in list_:
#     if type(element) == str:
#         new_string = ''
#         for char in element:
#             if char.isalpha():
#                 new_string += char.swapcase()
#         out.append(new_string)
#     else:
#         out.append(element)
# print(out)

## WAP TO GET THE FOLLOWING OUTPUT
# list_ = [12, 5.6,'hello', 3, 'abc']
# out = {12:144, 'hello':'h104e101l1o8l1o8o111', 3:9, 'abc':'a97b98c99'}

# out = {}
# for element in list_:
#     if type(element) == int:
#         out[element] = element ** 2
#     elif type(element) == str:
#         char_ascii = ''
#         for char in element:
#             char_ascii += char + str(ord(char))
#         out[element] = char_ascii
# print(out)

## WAP TO GET THE FOLLOWING OUTPUT
# LIST_ = ['hAi', 'HEllO', 'GOod']
# out: ['A', 'HEO', 'GO']













