
# what is conditional statement:

# 1. if statement
# 2. if ... else statement
# 3. if ... else if ... else statement


# 1. if statement

# if (condition) {
#   # Code to execute if condition is TRUE
# }

x = 50
if(x < 100){
  print("Less than 100")
}

if(x <= 100){
  print("Less than 50")
  print("Less than 50")
  print("Less than 50")
  print("Less than 50")
  print("Less than 50")
  print("Less than 50")
  print("Less than 50")
}

# 2. if else statement

# if (condition) {
#   # Code to execute if condition is TRUE
# } else {
#   # Code to execute if condition is FALSE
# }

x = 3
if( x > 5){
  print("x is greater than 5")
}else{
  print("x is not greater than 5")
}
  

if( x <= 5){
  print("x is greater than 5")
}else{
  print("x is not greater than 5")
}

# 3. if else if else
# if (condition1) {
#   # Code to execute if condition1 is TRUE
# } else if (condition2) {
#   # Code to execute if condition2 is TRUE
# } else {
#   # Code to execute if all conditions are FALSE
# }

# ctrl + shift + c: for commenting
  

x <- 11
if(x < 0 && x >10){
  print("x is negative")
  print("x is greater than 10")
}else if(x == 0){
  print("x is zero")
}else{
  print("x is positive")
}


x <- 10
if(x < 0){
  print("x is negative")
}else if(x == 10){
  print("x is zero")
} else{
  print("x is positive")
}


if(x == 0){
  print("x is equal to 0")
}else if(x == 5){
  print("x is equal to 5")
}else if(x == 10){
  print("x is equal to 10")
}else if(x == 15){
  print("x is equal to 15")
}else{
  print("x is not among these")
}

# Improvisation: adding booleans - &, |, !

x <- 1545
if(x >= 0 & x <= 500)
{
  print("x is among 0 to 500")
}else if(x >= 501 & x <= 1000){
  print("print x is among 501 - 1000")
}else{
  print("X is greater than 1000")
}

# Or
if(x < 0 | x >1000){
  print("X is in our range")
}else{
  print("x is in between 1-999")
}

# Not
if(!(x < 2000)){
  print("X is in our range")
}else{
  print("x is not in our range")
}
  
# Some practical Examples
df <- read.csv("../Data/ToothGrowth.csv", header = T)
head(df)

df[,3]
df$supp
table(df$supp)

df[,df$supp == c("VC")]

df.vc <- df[df$supp == c("VC"),]
dir.exists("data")


!dir.exists("data")
if(!dir.exists("data")){
  dir.create("data")
}
# write the dataset for VC
write.csv(df.vc, "./data/vc_data.csv", row.names = F)

# () bracket for functions
# {} code blocks
# [] index accessing
  
  