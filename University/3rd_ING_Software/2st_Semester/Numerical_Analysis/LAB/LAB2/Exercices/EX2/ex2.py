import numpy as np
from collections import namedtuple

import math

def getL(matrix):
    n = matrix.shape[0]
    L = np.zeros((n,n))
    print(L)

    for j in range(n):
        for i in range(j+1,n):
            if i == j:
                s = 0
                for k in range(j):
                    s = s + (L[j,k])**2
                L[i,i] = math.sqrt(matrix[i,i] - s)
            else: 
                s = 0
                for k in range(j):
                    s = s + L[i,k] * L[j,k]
                L[i,j] = (1/L[j,j]) * (matrix[i,j] - s)

    return L


matrix = np.array([
     [4,2,-2,6],
     [2,5,5,1],
     [-2,5,26,-10],
     [6,1,-10,12]
])

vect  = np.array([1,0,0,0])

print(getL(matrix))

