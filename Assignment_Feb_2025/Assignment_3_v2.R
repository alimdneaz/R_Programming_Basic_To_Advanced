#################################################
#                                               #
#     Assignment: 3                             #
#     Md Shoruv Hussain                         #
#     Md Sohel Rana                             #
#                                               #
#################################################


# 1. Install libraries
install.packages("sjlabelled")
install.packages("dplyr")
install.packages("haven")
install.packages("pheatmap")

# 2. Load the necessary libraries
library(dplyr) 
library(haven)
library(sjlabelled)
library(ggplot2)
library(pheatmap)


# 3. Read the data
df <- read_sav("F00011409-Trends_VS_1981_2022_sav_v4_0/Trends_VS_1981_2022_sav_v4_0.sav")
View(df)


# Dependent Variable: A025 - Respect and love for parents
# Independent Variables: 
# A026 - Parents responsibilities to their children
# A027 - Important child qualities: good manners
# A029 - Important child qualities: independence
# A030 - Important child qualities: hard work
# A032 - Important child qualities: feeling of responsibility
# A034 - Important child qualities: imagination
# A035 - Important child qualities: tolerance and respect for other people
# A038 - Important child qualities: thrift saving money and things
# A039 - Important child qualities: determination perseverance
# A040 - Important child qualities: religious faith
# A041 - Important child qualities: unselfishness
# A042 - Important child qualities: obedience
# A047 - Abortion when child physically handicapped
# A048 - Abortion when woman not married

# Research question: How do different child-rearing values and parental responsibilities influence respect and love for parents.
# 4. Hypothesis
# H0: There is no significant relationship between important child qualities and respect and love for parents.
# H1: There is a significant relationship between important child qualities and respect and love for parents.


# 5. Subset The data
varstoselect <- c("A025", "A026", "A027", "A029", "A030", "A032", "A034",
                  "A035", "A038", "A039", "A040", "A041", "A042", "A047",
                  "A048")
df2 <- df %>% 
  select(varstoselect)
df2 %>% dim()
View(df2)

# 6. Data Cleaning
colSums(is.na(df2))
colSums(is.na(df2)) %>%  sum()

# 6.1. Descriptive Statistics with NA
sink("results/summary.txt")
df2 %>% summary(na.rm = T)
sink()

df2$A025 %>% table()
# 6.2 Fill NA using the most frequent
replace_na_with_mode <- function(x) {
  if (is.numeric(x) | is.character(x) | is.factor(x)) {
    mode_value <- as.integer(names(sort(table(x), decreasing = TRUE))[1])  # Find the mode
    paste0("Mode Value: ", mode_value)
    x[is.na(x)] <- mode_value  # Replace NA with mode
  }
  return(x)
}
df3 <- as.data.frame(lapply(df2, replace_na_with_mode))

# 7. Heatmap of Correlations
cor_matrix <- cor(df3, use = "complete.obs")

pheatmap(cor_matrix, 
         main = "Correlation Heatmap", 
         color = colorRampPalette(c("green", "white", "red"))(100), 
         display_numbers = TRUE,   # Show correlation values in the heatmap
         clustering_distance_rows = "euclidean", 
         clustering_distance_cols = "euclidean", 
         clustering_method = "complete")


# 8. Linear Regression
ind.vars <- names(df3[,-1])
ind.vars
formula <- as.formula(paste("A025 ~", paste(ind.vars, collapse = " + ")))

model <- lm(formula, data = df3)
sink("results/regression_summary.txt")
summary(model)
sink()

# 9. Logistic Regression
df3$A025 <- as.factor(df3$A025)
model.glm <- glm(formula, data = df3, family = "binomial")
summary(model.glm)
model.glm$R
