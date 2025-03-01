import numpy as np

Array_1 = np.linspace(a, n)          # generate array from a to n with 50 elements (default)
Array_2 = np.linspace(a, n, b)       # generate array from a to n with b elements
Array_3 = np.linspace(a, n, b, False) # generate array from a to n (endpoint excluded) with b elements
Array_4, step = np.linspace(a, n, b, False, True) # generate array from a to n (endpoint excluded) with b elements
                                                   # also returns step size
