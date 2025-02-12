
# Functions
print("Hello, Neaz")

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



