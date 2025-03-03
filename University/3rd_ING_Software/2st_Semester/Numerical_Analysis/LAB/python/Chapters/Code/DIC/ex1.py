def function(x):
    return x**3 - 80

def ErrorEstimation(a,b):
    return (b-a)/2


def dichotomy(eps,a,b,function,max_iter=100):
  
    n = 1
     
    while ErrorEstimation(a,b) > eps and n <=max_iter :
        
        x = (a+b)/2
        
        if function(x) * function(a) < 0:
            b = x
        elif function(x) * function(b) < 0:
            a = x        
        
        n = n+1

    return (a+b)/2


eps = float(input("Input The Tolerance : "))
a = 4
b = 5
print(dichotomy(eps,a,b,function))
