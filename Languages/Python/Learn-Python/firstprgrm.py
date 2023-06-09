#<----------------CONDITION---------------->
print("<----------------CONDITION---------------->")
a = 8 
if a > 0 : 
    print("a BIGGER THEN 0 aka POSITIVE") 
elif a == 0:
    print("Null")
b = a if a > 0 else -a
print(b)
#<----------------------------------------->


#<----------------FUNCTIONS---------------->
#print("<----------------FUNCTIONS---------------->")

def function1(arg=0): #if no value is given to arg it will get 0 by default
    print(arg)

#<----------------------------------------->


#<----------------ITTERATION---------------->

print("<----------------ITTERATION---------------->")
list = [['Ahmed',1,6],['A','B','C'],[5,3,4]]
for i in list : 
    print(i) 
print("  ")
for i in range(len(list)) : 
    print(list[i])
for j in range(0,3,1):
    print(list[j])

print("  ")
i = 2
try :  
  while i >= 0: 
    print(list[i])
    function1(i) 
    i-=1
except IndexError :
    print("error : out of range")

finally : print("-------Finished-------") 
#<------------------------------------------>

#<----------------Scopes and variables---------------->
print("<----------------Scopes and variables---------------->")
i = 5
print("Outside the function i is equal to",i)
def function_var_scope(arg2="No errors"):
    global i
    i = 7
    print("In the function i is equal to",i)
    return arg2
function_var_scope()
print("Using general variable instruction to change i's value so i is equal now to ",i)


#<----------------Typing---------------->
print("<----------------Typing---------------->")
try :
    a = 8 
    b = "5"
    print(a + b)
except TypeError : 
        print(" |  Incompatible_Type  |") 
        choice = input("Do you want a solution ?")
        if choice == "Yes" :
            b = int("5") 
            print("Here it is BOSS",a+b)
finally : print(" |  FINISHED          |")

#Bool
a=input("Enter the value of a: ")
print(a)
if a :
    print("A = is true != 0")
else : print("A = is False = 0 or has no value")
c = []
b = [1,3,"ggg"]
print(c,b)
print(bool(c),bool(b))
#Bool(c) gives you a boolean variable based on the state of the list empty or full
#<-------------------------------------->

#<----------------LISTS---------------->
print("<----------------LISTS---------------->")
list1 = [11,[1,6,7],"hh",["amine","ilyes","riad","aymen"]]
list2 = [x for x in list1 ]
list3 =[y for y in list1 if type(y) is int] 
list4 =[z if type(z) is int else 0 for z in list1]
print("List one =",list1)
print("List two =",list2)
print("List three =",list3)
print("List four =",list4)
list5=[1,2,3]
list5.append("Appended data")
print("list five =",list5)
def reverse_string(my_string):
   if len(my_string) == 0:
      return my_string
   else:
      return reverse_string(my_string[1:]) + my_string[0]
my_str = str(input("Enter the string that needs to be reversed : "))
print("The string is :")
print(my_str)
print("The reversed string is :")
print(reverse_string(my_str))
#<------------------------------------->
#Dictionaries
dictio = {1: "mohammed",2:"ahmed",3:"amine"}
print(dictio,"TYPE:",type(dictio))
#keys are things that does not change 
#We can't use a variable as a key
for i in dictio :
    print(dictio[i])
#tuple is a disctionary which we can't change  
tuple_dictio = tuple(dictio.keys())
print(tuple_dictio)