"""
This code will be dedicated to document my databases course with python journey

"""
import mysql.connector
from datetime import datetime

mydb = mysql.connector.connect(host="tiwsal.dz", user="user2022stg01", passwd="passwd")
cursor = mydb.cursor()

if mydb:
    print('Success')
else:
    print('No success')
#cursor.execute("Create database Aminbtest") // Create a database
#cursor.execute("Create table tabletst(name varchar(200), sal int(20))") // Create a table
#cursor.execute("Drop table tabletst")
""" cursor.execute("Show tables")
for tb in cursor:
    print(tb) """
cursor.execute("select * from mqtt_sirius2022stg01.03amineb")
result = cursor.fetchall()
for data in result:
    print(data)
obs_msg = input("What is your topic ?")
content_msg=input("what is your message")
datetime_msg = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
datap = [(content_msg, obs_msg, datetime_msg)]
query ="insert into mqtt_sirius2022stg01.03amineb(content_msg,obs_msg,datetime_msg) values(%s, %s, %s) "
#insert into mqtt_sirius2022stg01.01fethi(content_msg, obs_msg, datetime_msg) values(%s, %s, %s)
print(datetime_msg)

cursor.executemany(query,datap)
mydb.commit()
#----------------------------------------------------------------------------------------
