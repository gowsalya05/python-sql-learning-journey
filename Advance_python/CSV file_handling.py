## CSV File Handling(comma separated values)

## syntax to write the data into the csv file

# import csv
# with open('file_path/file_name', 'w') as var:
#     var1 = csv.writer(var)
#     var1.writerow([data1, data2,.....])         ## It helps to write single row of data
#     var1.writerows([[data1, data2,.....], [data1, data2,.....], [data1, data2,.....]])  ## It helps to write multiple row of data

# import csv
# with open('file1.csv', 'w', newline= '') as a:
#     b = csv.writer(a)
#     b.writerow(['name', 'age', 'ph_no'])
#     b.writerows([['abc', 13, 765432345654], ['xyz', 15, 87654345678], ['pqr', 14, 8765432345]])

## syntax to read the data from the file

# import csv
# with open('file_name/file_path', 'r') as var:
#     var1 = csv.reader(var)
#     print(list(var1))

import csv
# with open('file1.csv') as a:
#     b = csv.reader(a)
    # print(list(b))

##or

# with open('file1.csv') as a:
#     b = csv.reader(a)
#     for row in b:
#         print(row)

with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
    b = csv.reader(a)
    for row in b:
        print(row)
    print('**************')

## Get the count of male and female

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
#     b = csv.reader(a)
#     male_count, female_count = 0, 0
#     for row in b:
#         if row[1] == 'male':
#             male_count += 1
#         elif row[1] == 'female':
#             female_count += 1
#     print(f'Male_Count:{male_count} Female_Count:{female_count}')

##or

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
#     b = csv.reader(a)
#     b.__next__()
#     male_count, female_count = 0, 0
#     for row in b:
#         if row[1] == 'male':
#             male_count += 1
#         else:
#             female_count += 1
#     print(f'Male_Count:{male_count} Female_Count:{female_count}')

## Get unique Department

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
#     b = csv.reader(a)
#     b.__next__()
#     Department = []
#     for row in b:
#         if row[2] not in Department:
#             Department.append(row[2])
#     print(Department)

## Total_Pay

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
#     b = csv.reader(a)
#     b.__next__()
#     Total_Pay = 0
#     for row in b:
#         Total_Pay += int(row[3])
#     print(Total_Pay)

## Get the details of emp whose name starts with vowel

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
    # b = csv.reader(a)
    # b.__next__()
    # for row in b:
    #     if row[0][0] in 'aeiouAEIOU':
    #         print(row)


## Get the details of emp whose salary is more than 75k

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
#     b = csv.reader(a)
#     b.__next__()
#     for row in b:
#         if int(row[3]) > 75000:
#             print(row)

## Get the details of male emp whose salary is less than 75k

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
#     b = csv.reader(a)
#     b.__next__()
#     for row in b:
#         if int(row[3]) < 75000 and row[1] == 'male':
#             print(row)

## get the details of emp whose name starts with consonants and works in development team

# with open(r"C:\Users\QSP\Documents\File_Handling\employees.csv") as a:
#     b = csv.reader(a)
#     b.__next__()
#     for row in b:
#         if row[0][0] not in 'aeiouAEIOU' and row[2] == 'development':
#             print(row)









