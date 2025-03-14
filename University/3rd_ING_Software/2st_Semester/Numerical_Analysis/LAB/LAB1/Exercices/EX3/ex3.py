import numpy as np
import matplotlib.pyplot as plt
from collections import namedtuple

root = namedtuple("root", ["position","a", "b","phi","x_0","eps","error","iteration"])

def function(x):
    return np.exp(x) + x**2/2 + x - 1

def phi_function(x):
    return 1 - np.exp(x) - (x**2/2)


def ErrorEstimation(x_0,x_1,k,n):
    return k**(n)/(1-k) * abs(x_0-x_1)


def Fixed_Point(eps,a,b,k,x_0,phi_function,label,max_iter=100):
     
    rootList=[]

    x_1 = x_n = x = phi_function(x_0)
    
    n = 0

    while (error:= ErrorEstimation(x_0,x_1,k,n)) > eps and n<= max_iter:
        x = phi_function(x_n)
        if x==x_n:
            rootList = [root(x_n,a,b,label,x_0,eps,"No Error",n)]
            return rootList
        x_n = x
        rootList.append(root(x_n,a,b,label,x_0,eps,f"{error:.2e}",n))
        n = n+1
     
    if n==0:
        rootList = [root(x_n,a,b,label,x_0,eps,"No Error",n)]
        return rootList
    elif n>max_iter:
        rootList = [root(x_n,a,b,label,x_0,eps,"Doesn't Converge Exceeded Max Number Of Iteration",n)]
    else: 
        return rootList


def scatter(rootElement,marker):
    
    if rootElement.error == "No Error":
        plt.scatter(rootElement.position,0,color="#88c999",marker=marker,label=fr"$\alpha \in [{rootElement.a},{rootElement.b}]  = {rootElement.position}$")
    
    else:
        plt.scatter(rootElement.position,0,color="#88c999",marker=marker,label=fr"$\alpha \in [{rootElement.a},{rootElement.b}]  \approx {rootElement.position}$")
        


def draw(x,y,label,rootList,color='red',marker='*'):
    plt.subplot(1,2,1)
    plt.plot(x,y,label=label,color=color)
    size = len(rootList)
    scatter(rootList[size-1],marker)
    plt.title(r"$f(x)$")
    plt.legend()
    plt.grid()

    plt.subplot(1,2,2)
    plt.axis('off')
    data = [[r.position, r.a, r.b, r.phi , r.x_0 , r.eps , r.error, r.iteration] for r in rootList] 
    headers =  ["Position","$a$","$b$",r"$\varphi$","$x_0$",r"$\epsilon$","Error","Iteration"]
    the_table = plt.table(fontsize=12,cellText=data,colLabels =headers ,cellLoc = 'center',loc='center')
    the_table.auto_set_column_width(col=list(range(len(headers))))
        

eps = 10**(-4)
k = 0.63
a = -1
b = -0.25
x_0 = -0.5

x = np.linspace(-2,2,400)
y = function(x)

label_f = r"$e^{x} + \dfrac{x^2}{2} + x - 1$"
label_phi =r"$1 - e^{x} - \dfrac{x^2}{2} $"

rootList = Fixed_Point(eps,a,b,k,x_0,phi_function,label_phi)

draw(x,y,label_f,rootList)

plt.suptitle(r"Tp$_1$ Exo$_3$")
plt.show()
