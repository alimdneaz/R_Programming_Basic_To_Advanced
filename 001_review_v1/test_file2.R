# Vectors

roll <- seq(-100,5)
roll
roll2 <- seq(1, 100, 2)
roll2
roll3 <- seq(1, 100, 5)

zeors <- rep(10, 100)
zeors

zeros2 <- rep(0, 500)
zeros2
class(zeros2)

x1 <- seq(11, 20)
x2 <- seq(21,30)
x1;x2
length(x1);length(x2)
combind.data <- rbind(x1, x2)
cbind(x1, x2)

myVector <- c(1,2,3,4)
myVector



# Accessing Elements
vec <- as.integer(rnorm(10,23,1))
vec[1]
vec[4]
vec[10]
vec[3:7]
# Negative Index removes that elements
vec[-1]
vec[-(1:5)]

vec[3] <- 100
vec


# Matrix:
vec2 <- 1:9
mat <- matrix(vec2,nrow = 3, ncol = 3, byrow = TRUE)
mat
mat[2,2]
mat[1,3]
mat[1,]
mat[,2]
mat[3,2] = 100
mat

# Sorting
vec <- as.integer(rnorm(100,23,5))
vec
sort(vec)
sort(vec, decreasing = T)


# Missing Values
mat[3,1] = NA
mat
sum(mat)
sum(mat, na.rm = T)

# Extrac Functin of Matrix
mat[3,1] = 7
mat
rowSums(mat)
colSums(mat)

rowMeans(mat)
colMeans(mat)

myvec2 <- c(NA, 3, T, NA, 2.33)
is.na(myvec2)
anyNA(myvec2)

# NA = na, nan, missing value
