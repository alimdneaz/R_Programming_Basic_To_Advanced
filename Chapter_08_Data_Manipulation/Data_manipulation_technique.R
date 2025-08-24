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
  