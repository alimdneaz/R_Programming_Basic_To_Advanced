#setwd("G:/002_Mabia_apu/001_Shourav_Vai/001_review_v1")
getwd()
dir()

# Functions of dir
dir.exists("data")
dir.exists("mydata")
dir.create("mydata")
dirname("data")


cd <- getwd()
newdir <- "MyDir"
subdir <- "project1"
newdirpath <- file.path(cd, newdir, subdir)
if(file.exists(cd)) dir.create(newdirpath)



apropos("mean")
?rep()
example("rep")



# T F
T & T
T | F
!F

# c(T, T) && c(T, F)
# ||
  
x = 10
x == 11

## <----
## 


x <- rep(1:10, 2)
x
4 %in% x
any(4 %in% x)
which(4 %in% x)
# gsub()
# strsplit()
"hello"
y <- "hello"
y

# @ # $ % ^ & * () - + : _, .


# my_func: Snake case: Python
# my.func
# my.func.first
# my.func.add
# myFuncAdd: Camel case: Java Script, Java