import numpy as np

def ErrorEstimation(x_0,x_1,k,n):
    return k**(n)/(1-k) * abs(x_0-x_1)

def phi_function(x):
    return x*np.exp(x)/3 - 1


def Fixed_Point(eps,k,x_0,phi_function,max_iter=100):
    
    x_1 = x_n = phi_function(x_0)
    
    n = 0

    while (error:= ErrorEstimation(x_0,x_1,k,n) > eps and n<= max_iter):
        x_n = phi_function(x_n)
        n = n+1

    return x_n

eps = 10**(-2)
x_0 = -0.5 
k = 0.045
print(Fixed_Point(eps,k,x_0,phi_function))
