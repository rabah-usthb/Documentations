hru = input("How was your day?\n") #no need for casting

grade1,grade2 = map(float,input("Input Grade Of 1st and 2nd Semester : ").split()) # input 2 float we must type cast
name , age , id = input("Input name , age , id : ").split() # if we try arithmetic operation on age we will get error 
                                                            # not casted to int

print('grade 1',grade1+2 ,'grade 2',grade2-1)
print(name,'day\'s is',hru)
print(age+1) # error will occure here
