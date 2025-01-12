
# read.table()
read.table()
?read.table()
women = read.table(file.choose(), header = T, sep = "\t")

# read.csv()
tooth = read.csv("../Data/ToothGrowth.csv",header = T, sep = ",")
tooth2 = read.csv("./Data/ToothGrowth.csv", header = T, sep = ",")

head(tooth)
View(tooth)

# Summary: 5 number summary 1. minimum, maximum, mean, median, 1qrt, 3qrt
head(women)
summary(women)
class(women)
class(tooth)
women
women[1,2]
women[]
1:10
1:2
women[1:2,]

# Reading from web
myURL = "http://bcb.dfci.harvard.edu/˜aedin/courses/Bioconductor/Women.txt"
web.data = read.table(myURL,header = T, sep = "\t")

mean(tooth$len)
sd(tooth$len)

# Problem 4: 
str(tooth)
tooth$supp = as.factor(tooth$supp)
tooth$dose = as.factor(tooth$dose)
model <- lm(tooth$len ~ tooth$supp + tooth$dose)
anova(model)
