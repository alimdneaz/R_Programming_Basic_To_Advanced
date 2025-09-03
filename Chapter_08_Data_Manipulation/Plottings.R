library(dplyr)

df <- read.csv("../Chapter_07_file_io/mtcars.csv") # , row.names = 1
dim(df)
str(df)
View(df)

df$cyl <- as.factor(df$cyl)
df$vs <- as.factor(df$vs)
df$am <- as.factor(df$am)
df$gear <- as.factor(df$gear)
df$carb <- as.factor(df$carb)

# Plotings --------
# Barcharts
?barplot()

barplot(df$mpg)
barplot(df$mpg, main = "Title",
        xlab = "Car Brand",
        ylab = "MPG",
        col = "#142547",
        las = 1,
        cex.axis = .8,
        cex.main = 1,
        cex.lab = .8,
        ylim = c(0, 50)
        )

plot(df$mpg,
     main = "Scatter Plot of MPG",
     xlab = "Car Brand",
     ylab = "MPG",
     las = 1,
     pch = 16,
     col = "cyan")


plot(df$mpg,
     main = "Scatter Plot of MPG",
     xlab = "Car Brand",
     ylab = "MPG",
     las = 1,
     pch = 16,
     col = "cyan",
     type = "l",
     lwd = 2)
nums <- rnorm(5, 30, 2)
pie(nums)


plot(df$mpg,
     main = "Scatter Plot of MPG",
     xlab = "Car Brand",
     ylab = "MPG",
     las = 1,s
     pch = 16,
     col = "cyan",
     type = "l",
     lwd = 2)
abline(h = 20, col = "red", lwd = 2)
abline(v = 15, col = "blue", lwd = 2)
# legend()
