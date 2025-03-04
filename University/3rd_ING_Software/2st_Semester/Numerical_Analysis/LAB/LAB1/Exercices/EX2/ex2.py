import numpy as np
import matplotlib.pyplot as plt
from collections import namedtuple

root = namedtuple("root", ["position","a", "b","error","iteration"])


def function_1(x):
    return np.log(x) - x + 2

def function_2(x):
    return np.exp(x) + x**2/2 + x - 1


def ErrorEstimation(a,b):
    return (b-a)/2


def dichotomy(eps,a,b,function,max_iter=100):
  
    n = 1
    a_0 = a
    b_0 = b

    while (error := ErrorEstimation(a,b)) > eps and n <=max_iter :
        
        x = (a+b)/2
        
        if function(x) * function(a) < 0:
            b = x
        elif function(x) * function(b) < 0:
            a = x 
        
        else:
            return root(x,a,n,"No Error",n)
        
        n = n+1
    
    return root((a+b)/2,a_0,b_0,f"{error:.2e}",n)
     

def scatter_many(root,index,marker="*"):
    if root.error == "No Error":
        plt.scatter(root.position,0,marker=marker,color="#88c999",label=fr"$\alpha_{index} \in [{root.a},{root.b}] = {root.position}$")
    else:
        plt.scatter(root.position,0,marker=marker,color="#88c999",label=fr"$\alpha_{index} \in [{root.a},{root.b}] \approx {root.position}$")


def scatter_single(root,marker="*"):
    if root.error=="No Error":
        plt.scatter(root.position,0,marker=marker,color="#88c999",label=fr"$\alpha \in [{root.a},{root.b}] = {root.position}$")
    else:
        plt.scatter(root.position,0,marker=marker,color="#88c999",label=fr"$\alpha \in [{root.a},{root.b}] \approx {root.position}$")

def scatter(rootList,marker="*"):
    size = len(rootList)
    
    if size == 1:
        scatter_single(rootList[0])
    else:
        for index in range(size):
            scatter_many(rootList[index],index)


def draw_graph(x,y,index,color,label,rootList,marker="*"):
    plt.subplot(2,2,index)
    plt.plot(x,y,color=color,label=fr"$f(x)_{index} = {label} $")
    plt.title(fr"$f_{index}(x)$")
    scatter(rootList)
    plt.legend()
    plt.grid()
    return index+1


def draw_table(rootList,index):
    data = [[r.position, r.a, r.b, r.error, r.iteration] for r in rootList]
    headers = ["Position", "a", "b", "Error", "Iteration"]
    plt.subplot(2,2,index)
    plt.axis("off")
    the_table = plt.table(cellText=data, colLabels=headers, loc="center", cellLoc="center")
    the_table.auto_set_column_width(col=list(range(len(headers))))
    the_table.scale(xscale=1, yscale=2)
    the_table.set_fontsize(12.5)
    return index+1


eps = 10 ** (-5)

x_1 = np.linspace(0.1,5,400)
x_2 = np.linspace(-2,2,400)

y_1 = function_1(x_1)
y_2 = function_2(x_2)

label_1 = r"\ln{(x)} - x + 2"
label_2 = r"e^{x} + \dfrac{x^2}{2} + x - 1"

color_1 = "red"
color_2 = "blue"

index = 1

rootList_1 = [dichotomy(eps,0,1,function_1)]
rootList_1.append(dichotomy(eps,3,4,function_1))

rootList_2 = [dichotomy(eps,-1,1,function_2)]

index = draw_graph(x_1,y_1,index,color_1,label_1,rootList_1)
index = draw_graph(x_2,y_2,index,color_2,label_2,rootList_2)
index = draw_table(rootList_1,index)
index = draw_table(rootList_2,index)

plt.suptitle(r"Tp$_{1}$ Exo$_{2}$")
plt.show()
