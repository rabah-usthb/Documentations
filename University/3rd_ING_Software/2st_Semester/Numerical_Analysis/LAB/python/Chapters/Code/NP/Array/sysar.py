import numpy as np

Array_1 = np.arange(n)               # generate array from 0 to (n-1) with step = 1
Array_2 = np.arange(a, n)            # generate array from a to (n-1) with step = 1
Array_3 = np.arange(a, n, b)         # generate array from a to less than n with step = b
Array_4 = np.arange(stop=n, step=b)  # generate array from 0 to less than n with step = b
