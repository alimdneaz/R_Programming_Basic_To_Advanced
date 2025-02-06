# Loops in R
x <- as.integer(runif(1,1,100))
x
myseq <- 1:10
myseq
for(i in 1:10){
  print(i)
  print(i)
  print(i)
  print(i)
}

# Some problems
a = 0
for(i in 1:100){
  a = a + i  
}
print(a)

# While:

a = 0
i = 1
while(i <= 100){
  a = a + i 
  i = i + 1
}
print(a)

x = 1
while(x <= 5){
  print(paste0("the value of x is:", x))
  x = x + 1
}


# break
for(i in 1:100){
  if(i == 41){
    break
  }
  print(i)
}

# next
for(i in 1:10){
  if(i == 7){
    next
  }
  print(i)
}


