# 1. Write a loop to print the first 10 natural numbers.

for(i in 1:10){
  print(i)
}

count = 1
while(count <= 10){
  print(count)
  count = count + 1
}

# 2. Use a while loop to calculate the sum of numbers from 1 to 100.

total = 0
i = 1
while(i <= 100){
  total = total + i
  i = i + 1
}
print(total)


# 3. Write a for loop to print all even numbers from 1 to 50
for(i in 1:50){
  if(i %% 2 == 0){
    print(i)
  }
}

# 4. Write a loop to compute the factorial of a number (n!)
# factorial of 5 = 5 * 4 * 3 * 2 * 1 = 120 (n!)

n = 100
fact = 1
for(i in 1:n){
  fact = fact * i
}
print(fact)


df <- read.csv("../Data/ToothGrowth.csv", header = T)
vars <- colnames(df)

for(i in 1:length(vars)){
  print(vars[i])
}
