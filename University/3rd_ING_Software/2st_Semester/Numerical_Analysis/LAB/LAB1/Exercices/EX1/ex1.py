import numpy as np 
import matplotlib.pyplot as plt
from collections import namedtuple

root = namedtuple("root", ["position","a", "b"])

def function_1(x):
    return x**6 - x -1;

def function_2(x):
    return 1 - 1/4 * np.cos(x)

def function_3(x):
    return np.cos(x) - np.exp(-x)

def function_4(x):
    return x**4 - 56.101*x**3 + 785.6561*x**2 - 72.7856*x + 0.0078

def scatter_single(rootElement,colorValue,marker):
    if rootElement.a == rootElement.b :
      plt.scatter(rootElement.position, 0, color = colorValue , marker = marker,label = fr"$\alpha = {rootElement.a}$")    
    else:
      plt.scatter(rootElement.position, 0, color = colorValue , marker = marker,label = fr"$\alpha \in [{rootElement.a},{rootElement.b}]$")    

def scatter_many(rootElement,colorValue,index,marker):
    if rootElement.a == rootElement.b :
      plt.scatter(rootElement.position, 0, color = colorValue , marker = marker,label = fr"$\alpha_{index} = {rootElement.a}$")    
    else:
      plt.scatter(rootElement.position, 0, color = colorValue , marker = marker,
        label = fr"$\alpha_{index} \in [{rootElement.a},{rootElement.b}]$")    



def draw(x,y,functionLabel,colorValue,rootList,index,title,marker='o'):
    plt.subplot(2,2,index)
    plt.plot(x, y, label=fr"{functionLabel}", color=colorValue)
    sizeList = len(rootList)
    
    if sizeList == 1:
        scatter_single(rootList[0],'#88c999',marker)
    elif sizeList > 1 :
      for i in range(sizeList):
        scatter_many(rootList[i],'#88c999',i+1,marker) 
    plt.legend()
    plt.grid()
    plt.title(title)
    return index+1


x1 = np.linspace(-2, 2, 400)
x2 = np.linspace(-2*np.pi, 2*np.pi, 400)
x3 = np.linspace(-1, 2*np.pi, 400)
x4 = np.linspace(-0.1, 0.5, 400)

y1 = function_1(x1)
y2 = function_2(x2)
y3 = function_3(x3)
y4 = function_4(x4)

index = 1
index = draw(x1,y1,fr"$f_{index}(x) = x^6 - x - 1$","blue",[root(-0.78,-1,-0.5),root(1.13,1,1.35)],index,r"$f_1(x)$")
index = draw(x2, y2,fr"$f_{index}(x) = 1 - \frac{{1}}{{4}} \cdot \cos{{(x)}}$","red",[],index,r"$f_2(x)$",'.')
index = draw(x3, y3,fr"$f_3(x) = \cos{{(x)}} - e^{{-x}}$","green",[root(0,0,0),root(1.275,1,1.35),root(4.71,4.5,5)],index,r"$f_3(x)$",'s')
index = draw(x4, y4,fr"$f_4(x) = x^4 - 56.101x^{{3}} + 785.6561x^{{2}} - 72.7856x + 0.0078$","orange",[root(0,0,0),root(0.09,0.08,0.1)],index,r"$f_4(x)$",'o')

plt.suptitle(r"TP$_1$ Exo$_1$")
plt.savefig("fig.pdf")
plt.show()
