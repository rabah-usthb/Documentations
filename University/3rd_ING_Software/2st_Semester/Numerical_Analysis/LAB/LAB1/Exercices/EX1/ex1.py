import numpy as np 
import matplotlib.pyplot as plt

def function_1(x):
    return x**6 - x -1;

def function_2(x):
    return 1 - 1/4 * np.cos(x)

def function_3(x):
    return np.cos(x) - np.exp(-x)

def function_4(x):
    return x**4 - 56.101*x**3 + 785.6561*x**2 - 72.7856*x + 0.0078


x1 = np.linspace(-2, 2, 400)
x2 = np.linspace(-2*np.pi, 2*np.pi, 400)
x3 = np.linspace(-1, 2*np.pi, 400)
x4 = np.linspace(-0.1, 0.5, 400)

y1 = function_1(x1)
y2 = function_2(x2)
y3 = function_3(x3)
y4 = function_4(x4)

plt.subplot(2,2,1)
plt.plot(x1, y1, label=r"$f_1(x) = x^6 - x - 1$", color="blue")
plt.scatter(1, 1, color = '#88c999' , label = r"$\alpha \in [1,1]$")
plt.text(2.35, 1.1, r"$\alpha \in [2, 1]$", fontsize=12, ha='right', va='bottom')
plt.legend()
plt.grid()

plt.subplot(2,2,2)
plt.plot(x2, y2, label=r"$f_2(x) = 1 - \frac{1}{4} \cdot \cos{(x)}$", color="red")
plt.legend()
plt.grid()



plt.subplot(2,2,3)
plt.plot(x3, y3, label=r"$f_3(x) = \cos{(x)} - e^{-x}$", color="green")
plt.legend()
plt.grid()


plt.subplot(2,2,4)
plt.plot(x4, y4, label=r"$f_4(x) = x^4 - 56.101x^{3} + 785.6561x^{2} - 72.7856x + 0.0078$", color="orange")
plt.legend()
plt.grid()

plt.show()


