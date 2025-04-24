import numpy as np
from collections import namedtuple

pivot = namedtuple("pivot", ["A","b","iteration"])


def solution(matrix, b):
    n = matrix.shape[0]
    x = np.zeros(n)  
    
    
    for i in reversed(range(n)):
        
        sum_val = b[i]
        
        
        for j in range(n):
            sum_val = sum_val - matrix[i, j] * x[j]
        
        
        x[i] = sum_val / matrix[i, i]
    
    return x    

def pivot_gauss(matrix,b):
    listPivot = [pivot(matrix.copy(),b.copy(),1)] 
    
    n = matrix.shape[0] - 1 

    for i in range(n):
        a = matrix[i,i]
        for j in range(i+1,matrix.shape[0]):
            fact = matrix[j,i]/a
            b[j] = b[j] - fact * b[i]
            matrix[j, :] = matrix[j,:] - fact * matrix[i,:]
        
        listPivot.append(pivot(matrix.copy(),b.copy(),i+2))   
        
    return listPivot

b = np.array([1,0,0,0])


matrix = np.array([
     [2,-1,4,0],
     [4,-1,5,1],
     [-2,2,-2,3],
     [0,3,-9,4]
])

List =pivot_gauss(matrix,b)
for val in List:
    print("Iteration ",val.iteration)
    print("\n A ",val.A)
    print("\n b ",val.b)

X = solution(matrix,b)
print(X)

