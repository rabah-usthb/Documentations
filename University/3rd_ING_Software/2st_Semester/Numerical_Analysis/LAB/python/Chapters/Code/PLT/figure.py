import matplotlib.pyplot as plt
import numpy as np

x1 = np.linspace(-2,2,100)
x2 = np.linspace(0.5,5,100)
x3 = np.linspace(-np.pi,np.pi,100)

y1 = np.exp(x1)
y2 = np.log(x2)
y3 = np.cos(x3)

plt.subplot(1,2,1)
plt.plot(x1,y1,label=r"$f_1(x) = e^x$",color = "red",linestyle='--',linewidth=1.75)
plt.title(r"$f_1(x)$")
plt.xlabel(r"$x_1$")
plt.ylabel(r"$y_1$")
plt.plot(np.array([0,1]),np.array([1,np.exp(1)]),linestyle='',color="lightblue",label="Points",marker='o')
plt.grid()
plt.legend()

plt.subplot(1,2,2)
plt.plot(x2,y2,label=r"$f_2(x) = \ln{(x)}$",color = "blue")
plt.title(r"$f_2(x)$")
plt.scatter(1,0,color="lightblue",label=r"$\alpha_1$",marker='*')
plt.scatter(2,np.log(2),color="lightgreen",label=r"$\alpha_2$",marker='D')
plt.legend()

plt.suptitle(r"figure$_1$")
plt.savefig("fig1.pdf")


plt.figure() 

plt.plot(x3,y3,label=r"$f_3(x) = \cos{(x)}$",color = "green",linewidth=1.25)
plt.title(r"$f_3(x)$")
plt.grid(True)

plt.suptitle(r"figure$_2$")
plt.savefig("fig2.pdf")

plt.show()
