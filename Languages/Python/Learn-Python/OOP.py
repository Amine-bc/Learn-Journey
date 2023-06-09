
"""
<---------OOP--------->
So here I will be discovering oop using Python:
1. First you need to know that they are instance attributes which you find in the constructor __init__ function.
2. And class attributes which are outside the constructor
3. Class methods are methods(functions) that gets in their parameters
4. static method doesn't need parameters
5. Inheritance : which is a property that allows a class to inherit another class's methods and attributes
6. Polymorphism : is the methods that gives a certain output specific to the type of the input
7. Encapsulation private attributes, protected attributes. (it doesn't exist really in python) but it still a notation
you use in your code to make others developers understand that this attribute is private or protected for example.
8. After working with encapsulation we still need to get and edit the class attributes
9. We can transform a method to a property by redirecting its output as a property and we will call it as an attribute
Not a method
"""
class myclass:

    def __init__(self,attribute1):
        self.firstattr = attribute1

object = myclass("This is the first attribute")
print(object.firstattr)


class member:
    not_allowed_names =["Baloot","##*","543"]
    users_num = 0
    @classmethod
    def user_num(cls):
        return f'The number of users is {cls.users_num}'
    @staticmethod
    def say_hello():
        return "Hello Mate!"
    def __init__(self,firstname,lastname):
        
        self.fname = firstname
        self.lname = lastname
        if (self.fname in member.not_allowed_names) or (self.lname in member.not_allowed_names):
            raise ValueError("NOT ALLOWED NAME")
        else: member.users_num +=1
    def fullname(self):
        return f'{self.fname} {self.lname}'
    def wlcm(self):
        return f'Welcome {self.fullname()}'

user1 = member("Ahmed","Bouchoucha")
print(user1.fullname())
print(user1.wlcm())
print(member.user_num())
print(member.say_hello())

#__Inheritance__:
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

class Student(Person):
    def __init__(self, name, age, mark):
        Person.__init__(self, name, age)
        self.mark = mark

    def show(self):
        return f'I\'m {self.name} and I\'m {self.age} years old I had {self.mark} '

class ftplayer(Person):
    def __init__(self, name, age, score):
        super().__init__(name,age)
        self.score = score

class human(Student,ftplayer):
    def __init__(self, name, age, mark, score):
        Student.__init__(self, name, age, mark)
        ftplayer.__init__(self, name, age, score)

    def show(self):
        return f" Hi I am {self.name} my age is : {self.age} my mark is {self.mark} and my score at football is {self.score}"


Amine = human("Amine", 19, 11, 3)
print(Amine.show())


""" TEST """
class First:
    def __init__(self):
        print("first")

class Second:
    def __init__(self):
        print("second")

class Third(First, Second):
    def __init__(self):
        super(Third, self).__init__()
        print("that's it")


print(Third.mro())

# POLYMORPHISM
class A:
    def poly(self):
        print('This is poly for A')
        raise NotImplementedError("Derived Class Must Implement This Method")
class B(A):
    def poly(self):
       return 'This is poly for B'
    pass

class1 = B()
print(class1.poly())

# Encapsulation

class myclass:
    def __init__(self,attr1,attr2):
        self._protecattr =attr1
        self.__privattr =attr2

myobject = myclass(1,2)
print(myobject._protecattr)
# print(myobject.__privatattr) This does'nt work
# But this works
#       |
#       |
#       v
print(myobject._myclass__privattr)

# Property

class myclass:
    @property
    def meth1(self):
        return "This Is A Property"

obj = myclass()
print(obj.meth1)

# From ELZERO

# ----------------------------------------------------------------
# -- Object Oriented Programming => ABCs => Abstract Base Class --
# ----------------------------------------------------------------
# - Class Called Abstract Class If it Has One or More Abstract Methods
# - abc module in Python Provides Infrastructure for Defining Custom Abstract Base Classes.
# - By Adding @absttractmethod Decorator on The Methods
# - ABCMeta Class Is a Metaclass Used For Defining Abstract Base Class
# --------------------------------------------------------------------

from abc import ABCMeta, abstractmethod

class Programming(metaclass=ABCMeta):

  @abstractmethod
  def has_oop(self):

    pass

  @abstractmethod
  def has_name(self):

    pass

class Python(Programming):

  def has_oop(self):

    return "Yes"

class Pascal(Programming):

  def has_oop(self):

    return "No"

  def has_name(self):

    return "Pascal"

one = Pascal()

print(one.has_oop())
print(one.has_name())