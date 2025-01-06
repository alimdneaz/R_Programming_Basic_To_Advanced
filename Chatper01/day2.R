

?mean()
help(mean)

#lme4
install.packages("lme4")
library(lme4)

x = 2 * 5 ^ 2
print(x) 
x


1 & 1
1 & 0

1 | 1
1 | 0

TRUE & TRUE

!0

c(1,2,3,4) > 2

1 && 1

0 || 1


x = 2 + 5
y <- 2 + 5 # Alt + -

x = 10
y = x + 1


val = 0.1
list1 = c(TRUE, 0.1, "apple")
print(val %in% list1)


mat = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
print (mat)
print( t(mat))
pro = mat %*% t(mat)
print(pro)


val = 0.1

z = 2+4
z = z + 10
z

# ~!@#$%^&*

# reserved keywards: for, if, else

# ls()
# ls(pattern = "x")
# rm(x)
# 
# rm(list = ls())

data()
data("women")
women

data("ChickWeight")
ChickWeight



x = 12
mode(x)
firstname = "Neaz"
secondname = "Ali"
class(name)

class(firstname)
class(secondname)
mode(firstname)
# firstname+ secondname
paste(firstname, secondname)


class(women)

# Vector
name = c("Shouruv", "Neaz")
name
class(name)

ages = c(33,22,34,55,22,11,23)
ages
ls(pattern = "ages")

1:10
1:100
1:1000000

Vec2 = LETTERS[1:10]
Vec2



Vec1 = 1:10
mat1 = matrix(Vec1, ncol = 2, nrow = 5)
# mat1 = matrix(vec1, ncol = 2, nrow = 5)
print(mat1)
dim(mat1)

person1 = list("Neaz", 26, FALSE, TRUE, 3.45)
person1

rep(5,100)

charVec = rep(LETTERS[1:3], 10)
print(charVec)
table(charVec)
class(charVec)
fac1 = factor(charVec)
print(fac1)

levels(fac1)
table(fac1)
class(fac1)
attributes(fac1)

# attributes(x = 1) # attributes is only for factors
Vec1
length(Vec1)

num <- as.integer(rnorm(1, 10000,2))
vec3 <- rep(5, num)
length(vec3)
