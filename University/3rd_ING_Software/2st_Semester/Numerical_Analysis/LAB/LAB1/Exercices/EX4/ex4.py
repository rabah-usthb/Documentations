import numpy as np
import matplotlib.pyplot as plt
from collections import namedtuple

root = namedtuple("root", ["position","a", "b","M","m","x_0","eps","error","iteration"])

def function(x):
    return np.exp(x) + x**2/2 + x - 1 

def derivate_function(x):
    return np.exp(x) + x + 1

def new_function(derivate,func,x):
    return x - func(x)/derivate(x)


def ErrorEstimation(M,m,x_n,x):
    return M/2*m * (abs(x_n-x))**2


def newTone(eps,a,b,M,m,x_0,derivate,func,max_iter=100):
     
    rootList=[]
    x=x_0
    x_n  = new_function(derivate,func,x_0)
    
    n = 0


    while (error:= ErrorEstimation(M,m,x_n,x)) > eps and n<= max_iter:
        x = x_n
        x_n = new_function(derivate,func,x)
   
        if x==x_n:
            print("ss")
            rootList = [root(x_n,a,b,M,m,x_0,eps,"No Error",n)]
            return rootList 
        
        rootList.append(root(x_n,a,b,M,m,x_0,eps,error,n))
        n = n+1
     
    if n==0:
        rootList = [root(x_n,a,b,M,m,x_0,eps,"No Error",n)]
        print("ssssss")
        return rootList
    elif n>max_iter:
        rootList = [root(x_n,a,b,M,m,x_0,eps,"Doesn't Converge Exceeded Max Number Of Iteration",n)]
        return rootList
    else: 
        return rootList


def scatter(rootElement,marker):
    
    if rootElement.error == "No Error":
        plt.scatter(rootElement.position,0,color="#88c999",marker=marker,label=fr"$\alpha \in [{rootElement.a},{rootElement.b}]  = {rootElement.position}$")
    
    else:
        plt.scatter(rootElement.position,0,color="#88c999",marker=marker,label=fr"$\alpha \in [{rootElement.a},{rootElement.b}]  \approx {rootElement.position}$")
        

def drawGraphError(rootList):
    x = []
    y = []
    for value in rootList:
        x.append(value.iteration)
        y.append(value.error)

    plt.subplot(2,2,3)
    plt.plot(x,y,label=r"$E(n) = \dfrac{k^n}{1-k} \cdot |x_0 - x_1|$")
    plt.title(r"$E(n)$")

    plt.xlabel("Iteration")
    plt.ylabel("Error")
    plt.legend()
    plt.grid()


def draw(x,y,label,rootList,color='red',marker='*'):
    plt.subplot(1,2,1)

    plt.subplots_adjust(top=0.95)
    plt.plot(x,y,label=label,color=color)
    size = len(rootList)
    scatter(rootList[size-1],marker)
    plt.title(r"$f(x)$")
    plt.xlabel("x")
    plt.ylabel("y")
    plt.legend()
    plt.grid()

    plt.subplot(1,2,2)
    plt.axis('off')
    data = [[r.position, r.a, r.b,r.M,r.m, r.x_0 , r.eps , r.error, r.iteration] for r in rootList] 
    headers =  ["Position","$a$","$b$","$M$","$M$","$x_0$",r"$\epsilon$","Error","Iteration"]
    the_table = plt.table(fontsize=12,cellText=data,colLabels =headers ,cellLoc = 'center',loc='center')
    the_table.auto_set_column_width(col=list(range(len(headers))))
        
plt.figure(figsize=(15, 8))

eps = 10**(-5)
m = 0.36
M = 3.71
a = -1
b = 1
x_0 = -1

x = np.linspace(-2,2,400)
y = function(x)

label_f = r"$ f(x) = e(x) + \dfrac{x^2}{2} + x - 1$"



rootList = newTone(eps,a,b,M,m,x_0,derivate_function,function)

draw(x,y,label_f,rootList)

plt.suptitle(r"Tp$_1$ Exo$_4$")




plt.show()
