import numpy as np

array_1  = np.linspace(1,2,5)
array_2 = np.linspace(1,2, 5, False)
array_3, step = np.linspace(1, 2, 5, False, True) 
array_4  = np.linspace(1,2)

print(array_1)
print(array_2)
print(step,array_3)
print(array_4)
