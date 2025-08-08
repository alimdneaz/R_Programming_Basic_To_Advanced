
# Functions
print("Hello, Neaz")

seq(1, 100)

add_two = function(a,b){
  total = a + b
  # print(total)
  return(total)
}

add_two(4,100)
total1 = add_two(4,100)
# add_two(323,2323)

sum(1:10)
mytotal = sum(1:10)
mytotal


no.input = function(){
  print(as.integer(runif(100, 0, 100)))
}

no.input()

# 4 categories on the basis of argument and return
# 1. no input, no return
# 2. no input, but return
# 3. input, no return
# 4. input, return

no.input.return = function(){
  return(as.integer(runif(100, 0, 100)))
}
no.input.return()


# Function Definition and Function Call
plot_number = function(values){
  plot(values)  
}

# function call
plot_number(1:100)

# Lambda function
(function(x) x^2)(4) 

# apply, lapply, tapply

# Function Arguments
add_two = function(a,b){
  total = a + b
  # print(total)
  return(total)
}



# Required Argument 
add_two()
add_two(3,2)
add_two(3,)
# Default Argument
add_two_def = function(a = 0,b = 0){
  total = a + b
  # print(total)
  return(total)
}
add_two_def()
add_two_def(a = 5)
add_two_def(b = 10)
add_two_def(a = 100, b= 2154)

# Variable Argument

myfun = function(a, b, ...){
  return(a+b)
}
myfun(1,2,3)


# Example: Power Function
powerfunc = function(a, b, ...){
  to_return = 1
  for(i in 1:b){
    to_return = to_return * a
  }
  return(to_return)
}
powerfunc(2,5)

2^5 # = 2 * 2 * 2 * 2 * 2
# a = 2
# b = 5

# Scope of Variables or Scopes

age = 52 # Global

my_function = function(abc){
  print(abc)
  my_age = 100 # Local scope
  print(age)
  print(my_age)
}

my_function(141)

age
my_age


add_num = function(a, b){
  result = a + b
  print(result)
}

add_num(45,32)
result


# Recursive Function
sum(1:100)


# Factorial: 5! = 120 (1 * 2 * 3 * 4 * 5)
factorial(10)

# Give me the factorial of 9 then i will multiply it with 10

fact = function(num){
  if(num == 0 || num ==1){ # Base case
    return(1)
  }
  return(num * fact(num - 1))
}

fact(5)
fact(10)
fact(100)

# prbolem 1: fibonacci series
first = 0
second = 1
n= 5
next_num = 0
for(i in 3:n){
  next_num = first + second
  first = second
  second = next_num
}
print(next_num)


fibonnaci = function(num){
  first = 0
  second = 1
  next_num = 0
  for(i in 3:num){
    next_num = first + second
    first = second
    second = next_num
  }
  return(next_num)
}

fibonnaci(10)


# Problem 2: 
vec = 1:10
sum(vec^2)

square_sum = function(my_vec){
  total = 0
  n = length(my_vec)
  for(i in 1:n){
    total = total + my_vec[i]^2
    print(total)
  }
  return(total)
}

square_sum(vec)
  
  
  
  
  
  