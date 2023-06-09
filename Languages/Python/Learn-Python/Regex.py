#Regex

import re

txt = "The rain in Spain"
biais = 0
try:
    while 1==1:
       x = re.search("ai", txt)
       tup = x.span()
       tup = list(tup)
       tup[0] += biais
       tup[1] += biais
       tup = tuple(tup)
       print(tup)
       i = tup[1]
       biais += i
       txt = txt[i:len(txt)]
except: print("Error")

