# Install libraries ----------
install.packages("dplyr") # data manipulation
install.packages("ggplot2") # data visualization

# Load Libraries ------------
library(dplyr)
# library(ggplot2)
# Load Data --------------
df <- read.csv("../Chapter_07_file_io/mtcars.csv")
head(df)
str(df)
names(df)
dim(df)
View(df)
# piping operator: %>% ( ctrl + shift + m)
df %>% head()

# Verb 1: Filtering -----------
View(df)
df %>% View()

df2 = df %>% 
  filter(cyl > 4)
df2 %>% dim()
df %>% dim()

df2 %>% View()

## Filter based on weight
summary(df[,"wt"])
df$wt %>% summary()
df3 <- df %>% 
  filter(wt >= 3.325)
df3 %>% 
  head() %>% 
  View()

# Verb 2: Select -----------
sum(df$drat)

df %>% 
  select(drat) %>% 
  sum()
names(df)

df %>% 
  select(drat, mpg) 

df %>% 
  select(-drat) 
# Verb 3: arrange -----------
df4 <- df %>% 
  arrange(cyl) 

df5 <- df %>% 
  arrange(desc(cyl))
View(df5)

# Verb 4: mutate --------
# df %>% mutate(Passed = ifelse(Score >= 80, "Yes", "No"))
df %>% select(wt) %>% summary()


df5 <- df %>% 
  mutate(wt_cat = ifelse(wt >= 3.325, "Heavy", "Light"))
df5 %>% 
  head() %>% 
  View()
df6 <- df %>% 
  mutate(hp_disp = hp + disp)
df6 %>% head() %>% View()  
  
# Verb 5: summarize -------
df %>% 
  summarise(avg_wt = mean(wt))

df$wt %>% mean()
names(df)
colnames(df)
df$drat %>% 
  mean()
# -----------------------------------------
# Day 01: dplyr
df
dim(df)
df2 <- df[,1:7]
df3 <- df[, 7:12]
View(df2)
View(df3)

# Joing ----------
students <- data.frame(ID = 1:3, Name = c("A", "B", "C")) 
scores   <- data.frame(ID = c(1,2,4), Score = c(90, 85, 70)) 
students
scores

students %>% left_join(scores, by = "ID") 
students %>% right_join(scores, by = "ID")
full_join(students, scores, by = "ID")



students <- data.frame( 
  ID = 1:6, 
  Name = c("Ali", "Sara", "John", "Mina", "Ravi", "Lily"), 
  Age = c(20, 22, 21, 23, 22, 20), 
  Marks = c(85, 90, 70, 60, 95, 88), 
  Dept = c("CS", "Math", "CS", "Physics", "Math", "CS") 
) 
View(students)

# Problem 1:
students %>% 
  select(Name, Marks)
# Problem 2:
student.2 = students %>% 
  filter(Marks>80)
students %>% 
  filter(Dept == "CS")
students %>% 
  filter(Dept == "Math")

students %>% 
  filter( Age > 21 & Marks > 80)

grade <- rep(0, 6)
for(i in 1:6){
  if(students$Marks[i] >= 85)
      grade[i] <- "A"
  else
    grade[i] <- "B"
}
grade
students$Marks
cbind(students, grade)

students$Marks <- students$Marks + 5
students

students$Marks %>% 
  mean()
students$Marks %>% 
  max()


students %>% 
  select(Marks) %>% 
  max()
which(students$Marks == 100)
students[5,]


# Counts students group by
students %>% 
  select(Dept) %>% 
  table()
