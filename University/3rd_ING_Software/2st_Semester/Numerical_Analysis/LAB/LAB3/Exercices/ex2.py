import numpy as np

import math


import numpy as np

def jacobi(A, b, x0=None, tol=1e-10, max_iter=1000):
    n = A.shape[0]
    
    # Create an initial guess if not provided
    if x0 is None:
        x0 = np.zeros(n)
    
    # Create a copy of the initial guess
    x = x0.copy()
    
    # Iteration counter
    iterations = 0
    
    # Iterative process
    for k in range(max_iter):
        iterations += 1
        x_new = np.zeros(n)
        
        for i in range(n):
            # Sum of all off-diagonal terms in the ith row
            s1 = np.sum(A[i, :i] * x[:i])
            s2 = np.sum(A[i, i+1:] * x[i+1:])
            
            # Update x according to the Jacobi formula
            x_new[i] = (b[i] - s1 - s2) / A[i, i]
        
        # Check for convergence
        if np.linalg.norm(x_new - x) < tol:
            break
            
        x = x_new.copy()
    
    return x, iterations

matrix = np.array([
     [1,2,4],
     [1/8,1,1],
     [-1,4,1]
])

b = np.array([1,3,7])

x = np.matrix([0,0,0])

solution, iterations = jacobi(matrix, b)
print(f"Solution: {solution}")
print(f"Iterations: {iterations}")
print(f"Verification A·x = {np.dot(matrix, solution)}")
