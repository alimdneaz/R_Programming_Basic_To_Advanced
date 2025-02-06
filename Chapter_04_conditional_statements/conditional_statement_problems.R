# 1. Write an R script that checks if a number is even or odd.

x <- as.integer(rnorm(1, 50, 3))
print(x)
if(x %% 2 == 1){
  print("Odd")
}else{
  print("Even")
}

# 2. Create an if...else if...else statement to categorize numbers as negative, zero, or positive.

x <- as.integer(rnorm(1, 0, 3))
print(x)
if(x > 0){
  print("X is positive.")
}else if(x < 0){
  print("X is negative.")
}else{
  print("X is equal to zero.")
}

# 3. Write an R script that takes an input temperature in Celsius and 
#prints whether it is "Cold" (below 10), "Moderate" (10-25), or "Hot" (above 25).

x <- as.integer(runif(1,0,50))
print(x)
if(x > 25){
  print("Hot")
}else if(x > 10 & x <= 25){
  print("Moderate")
}else{
  "Cold"
}

######## Home Work ###################
# 4. Create an R script that asks for a user's age and determines 
# if they are a minor (under 18), an adult (18-60), or a senior (above 60).

# 5. Implement a program using if...else to check whether a given year is a leap year.

x <- as.integer(runif(1,1980,2050))
x
if(x %% 4 ==0){
  print("Leap Year")
}else{
  print("Not Leap Year")
}

# 6. Develop a script where the user enters a grade (A, B, C, D, F), and the script 
# prints the corresponding remark (Excellent, Good, Average, Poor, Fail)
x <- as.integer(runif(1,1,5))
x
grades <- LETTERS[1:6]
grades <- grades[-5]
grades

if(grades[x] == "A"){
  print("Excellent")
}else if(grades[x] == "B"){
  print("Good")
}else if(grades[x] == "C"){
  print("Average")
}else if(grades[x] == "D"){
  print("Poor")
}else{
  print("F")
}

  
  
  