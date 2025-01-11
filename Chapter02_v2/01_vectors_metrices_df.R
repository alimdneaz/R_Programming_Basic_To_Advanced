

# Vector
a = c(1,2,1,3,2,4)
a

x.vec = seq(1,10)
x.vec
?seq()

x.vec = seq(1,7, by = 2)
x.vec
x.vec = seq(1,7, .1)
x.vec

x.vec = seq(1,7, by = 2)
x.vec
names(x.vec) = letters[1:4]
x.vec

xMat = cbind(x.vec , rnorm(4), rep(5,4))
xMat             

yMat = rbind(x.vec , rnorm(4), rep(5,4))
yMat
x.df = data.frame(xMat)
x.df

names(x.df)

names(x.df) = c("indx", "random", "score")
names(x.df)
x.df

# Accessing and Modify Element
x.vec[3]
x.vec[4]
x.vec[1:3]
length(x.vec)

xMat[3,2]
xMat[1:2,]
xMat[,1]

xMat[-1,]

# xMat[xMat[,1] > 3, ]

# $ sign to acess variables in df
x.df$indx
x.df$score
x.df$random

str(x.df)

x.df[1,]

# Modify
x.df[1,] = 100
x.df

dim(x.df)

# Sorting
X = as.integer(rnorm(10, 25, 1))
X

sort(X)
?sort()
sort(X, decreasing = TRUE)
order(X)


# Data Frame
data()

dim(ChickWeight)
str(ChickWeight)


# Missing Value

xMat 
xMat[1,1] <- NA
xMat


z = c(1:3, NA)
z
ind = is.na(z)
ind

vec <- c(T, F, F, T)
z[vec]

!is.na(z)

z[!is.na(z)]



all(is.na(z))
any(is.na(z))
sum(is.na(z))
sum(is.na(z)) > 1


ls()
rm(list = ls())

# Exercise
myURL <- "http://bcb.dfci.harvard.edu/˜aedin/courses/Bioconductor/Women.txt"
women <-read.table(myURL, sep = "\t", header = TRUE)
women











