
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
