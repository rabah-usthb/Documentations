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
    
    rootList = []
    n = 0
    a_0 = a
    b_0 = b

    rootList.append(root("None",a,b,"None","Before Algo Start"))

    while (error := ErrorEstimation(a,b)) > eps and n <=max_iter :
        
        x = (a+b)/2
        
        if function(x) * function(a) < 0:
            b = x
        elif function(x) * function(b) < 0:
            a = x 
        else:
            rootList.append(root(x,a,b,"No Error",n))
            return rootList
        
        rootList.append(root(x,a,b,f"{error:.2e}",n))
        n = n+1
    
    rootList.append(root((a+b)/2,a,b,f"{error:.2e}",n))
    return rootList 
     

def scatter_many(a,b,position,error,index,marker="*"):
    if error == "No Error":
        plt.scatter(position,0,marker=marker,color="#88c999",label=fr"$\alpha_{index} \in [{a},{b}] = {root.position}$")
    else:
        plt.scatter(position,0,marker=marker,color="#88c999",label=fr"$\alpha_{index} \in [{a},{b}] \approx {position}$")


def scatter_single(a,b,position,error,marker="*"):
    if error=="No Error":
        plt.scatter(position,0,marker=marker,color="#88c999",label=fr"$\alpha \in [{a},{b}] = {position}$")
    else:
        plt.scatter(position,0,marker=marker,color="#88c999",label=fr"$\alpha \in [{a},{b}] \approx {position}$")

def scatter(rootMatrix,marker="*"):
    size = len(rootMatrix)
    
    if size == 1:
        firstElement = rootMatrix[0][0]
        lastElement = rootMatrix[0][-1]

        scatter_single(firstElement.a,firstElement.b,lastElement.position,lastElement.error)
    else:
        for index in range(size):
            firstElement = rootMatrix[index][0]
            lastElement = rootMatrix[index][-1]
            scatter_many(firstElement.a,firstElement.b,lastElement.position,lastElement.error,index)


def draw_graph(x,y,index,color,label,rootMatrix,marker="*"):
    plt.subplot(1,2,index)
    plt.plot(x,y,color=color,label=fr"$f(x)_{index} = {label} $")
    plt.title(fr"$f_{index}(x)$")
    scatter(rootMatrix)
    plt.legend()
    plt.grid()
    return index+1


def draw_table(rootMatrix,index):

    for rootList in rootMatrix:
        plt.subplot(2,2,index)
        plt.subplots_adjust(top=0.85)
        plt.axis("off")
        data = [[r.position, r.a, r.b, r.error, r.iteration] for r in rootList]
        headers = ["Position", "a", "b", "Error", "Iteration"]
        the_table = plt.table(cellText=data, colLabels=headers,fontsize=12,loc="center", cellLoc="left")
        the_table.auto_set_column_width(col=list(range(len(headers))))
        index = index+1
    
    return index


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

rootList_1 = dichotomy(eps,0,1,function_1)
rootList_2 = dichotomy(eps,3,4,function_1)

rootMatrix_1 = [rootList_1 , rootList_2] 

rootMatrix_2 = [dichotomy(eps,-1,1,function_2)]

index = draw_graph(x_1,y_1,index,color_1,label_1,rootMatrix_1)
index = draw_graph(x_2,y_2,index,color_2,label_2,rootMatrix_2)

plt.suptitle(r"Tp$_{1}$ Exo$_{2}$ Functions")

plt.figure(figsize=(10, 7))
index = 1
index = draw_table(rootMatrix_1,index)
index = draw_table(rootMatrix_2,index)

plt.suptitle(r"Tp$_{1}$ Exo$_{2}$ Tables")

plt.show()
