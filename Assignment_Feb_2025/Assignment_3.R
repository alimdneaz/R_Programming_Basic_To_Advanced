#################################################
#                                               #
#     Assignment 3                              #
#     Md Shoruv Hussain                         #
#     Md Sohel Rana                             #
#                                               #
#################################################


# Install libraries
install.packages("sjlabelled")

# Load the necessary libraries
library(dplyr) 
library(haven)
library(sjlabelled)

# Read the data
df <- read_sav("F00011409-Trends_VS_1981_2022_sav_v4_0/Trends_VS_1981_2022_sav_v4_0.sav")
View(df)

# Seeing the Variables
if(!dir.exists("results")){
  dir.create("results")
}
sink("results/variables.txt")
dim(df)
str(df)
names(df)
sink()

df %>% 
  select(S004) %>% 
  table()
# Checking the labels of the data
sink("./results/labels.txt")
get_label(df)
sink()

# Checking Variable: X028
df %>% 
  select(X028) %>% 
  summary()
df %>% 
  select(X028) %>% 
  table()
df %>% 
  select(X028) %>% 
  head()
df$X028 <- as.factor(df$X028)
df %>% 
  select(X028) %>% 
  table()
is.na(df$X028) %>% sum()
length(df$X028)

# Subset of the Data from: A019 - A048
vars <- paste0("A0",25:48)
vars2 <- c("A019", "A025", "A026", "A027","A029", "A030","A032","A034","A035",
           "A038", "A039", "A040", "A041", "A042","A046","A047", "A048")
df2 <- df[,vars2]

View(df2)
cbind("A019", vars)

names(df2)
sink("results/df2.txt")
get_label(df2)
sink()
str(df2$A025)
df2 %>% 
  select(A025) %>% 
  table()
# A025: Respect and love for parents: Target Variable
# A019-A048: Independent Variables

