import datetime as dt               #import the whole datetime module as dt 
import cmath                        #import the whole module cmath
import math                         #import the whole module math
from math import sqrt as sq , pi    #import sqrt function as sq and pi variable from math module 
from cmath import sqrt as sq        #import sqrt function as sq from cmath module

print(dt.datetime.now())            #call the datetime.now() function of dt
print(cmath.sqrt(5))                #call the sqrt() function of camth
print(pi)                           #call the pi variable of math
print(math.sqrt(5))                 #call the sqrt() function of math
print(sq(5))                        #call the sq() function of cmath (it was overriden with cmath)
