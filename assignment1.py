
#  Square root of a number

def square_root(num):
     found = False
     for i in range(1,num+1):
        if i*i == num :
           print (f"The Square root of {num} is {i}")
           found = True    
           break   
     if not found :    
         print(f"{num} : This is not a perfect square")               
square_root (36)  
square_root (11) 


# Exponentiation

def exp(a,b):
    c = a ** b
    print(f"{a} power of {b} is :",c)
    return c
exp(5,3)


# Exponentiation using for loop

def exp(a,b):
    result = 1
    for i in range(b):
        result = result * a
    print(f"{a} power of {b} is :",result)
    return result
        
exp(6,2)


# # Factorial of a number
 
def fact(n):
   if n== 1 :
      return 1
   return n*fact(n-1)
print("Factorial of 4 is : ",fact(4))






















        

