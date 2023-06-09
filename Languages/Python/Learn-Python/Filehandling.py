import os
import time
MyFile = open("testing file","r")
#print(MyFile.read(100))
"""
print(MyFile.readline())#line1

print(MyFile.readline())#line2

print(MyFile.readline())#line3

print(MyFile.readline())#line4

print(MyFile.readline())#line5

print(MyFile.readline())#line6
"""
cpt =0
for line in MyFile:
    print(line)
    cpt +=1
print('number of lines is',cpt)
MyFile = open("testing file","a")
MyFile.write("\nNow the file has more content!")
MyFile.close()
MyFile = open("testing file","r")
print(MyFile.read(100))

print("Let's create a file")
#NewFile = open("PythonCreatedFile","x")
NewFile = open("PythonCreatedFile","w")
NewFile.write("Write here Then.....")
NewFile.write("Writing here")
NewFile.close()

NewFile = open("PythonCreatedFileToBeDeleted","x")
f = "PythonCreatedFileToBeDeleted"
time.sleep(5)
if os.path.exists(f):
  os.remove(f)
  print("EXISTS")
else:
  print("The file does not exist")