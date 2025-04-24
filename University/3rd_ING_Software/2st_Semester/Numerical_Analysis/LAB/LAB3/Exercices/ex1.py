import numpy as np

import math

def isSym(A):
    return np.array_equal(A, A.T)


def isDef(A):
    tuplePropre = np.linalg.eigvals(A)
    return np.all(tuplePropre > 0)


matrix = np.array([
     [1,2,3,-1],
     [2,-1,9,-7],
     [-3,4,-3,19],
     [4,-2,6,-21]
])


if (isSym(matrix)) :
    print("A is symetric") 
else :
    print("A is asymetric")

if(isDef(matrix)) :
        print("A is Positive Defined")
else :
        print("A isn't Positive Defined")



