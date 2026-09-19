########DICTIONARY########
dict={1:2,6:"hiii",8:2}
print(dict)

Dict={1:2,6:"hiii",8:2}
print(Dict)
print(len(Dict))

Syntax:{k1:v1}

print(dir(dict))

dict={1:2,6:"hiii",8:2}
print(dict)     #fetch values using keys

dict={1:2,6:"hiii",8:2}
dict[1]=566     #modify
print(dict)
dict[78]=89
print(dict)    #add key value pair in dictionary

dict={1:2,6:"hiii",8:2,True:7}
print(dict.items())

dict={1:2,6:"hiii",67:1,"gows":7}
dict.update({8:7})
print(dict)    #update new key,value in dict

dict={1:2,6:"hiii",67:1,"gows":7}
dict.pop(1)         #removes value using key
print(dict)
print(dict.popitem())      #removes last key,value pair
print(dict.popitem())
print(dict.clear())    #clear all from dict

dict={1:2,6:"hiii",67:1,"gows":7}
print(dict.get(1))          #returns the value
print(dict.get(100,"no"))   #returns no when there is no keyvalue pair in dictionary
print(dict.get(100,7))      #returns value once declared here

Dict = {'a':[1, 'hello', 'after', 'noon'], 4: (['python'], ('evening'), ('night',)), 45:{55:{66:{77:{88:('12356',)}}}}}
print(Dict[4][1][1])
