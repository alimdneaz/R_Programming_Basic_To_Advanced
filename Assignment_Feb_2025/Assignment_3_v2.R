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
install.packages("Hmisc") # Data Imputation


# 2. Load the necessary libraries
library(dplyr) 
library(haven)
library(sjlabelled)
library(ggplot2)
library(pheatmap)
library(Hmisc)

# 3. Read the data
df <- read_sav("F00011409-Trends_VS_1981_2022_sav_v4_0/Trends_VS_1981_2022_sav_v4_0.sav")
View(df)
str(df)
dim(df)


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
# A001 - Important in life: Family
# A005 - Important in life: Work
# A006 - Important in life: Religion
# A007 - Service to others important in life
# A058 - Spend time with friends
# A060 - Spend time with people at your church, mosque or synagogue
# A064 - Belong to social welfare service for elderly, handicapped or deprived people
# A065 - Member: Belong to religious organization
# A066 - Member: Belong to education, arts, music or cultural activities
# A169 - Good human relationships
# A170 - Satisfaction with your life 


# 5. Subset The data with selected variables
varstoselect <- c("A025", "A026", "A027", "A029", "A030", "A032", "A034",
                  "A035", "A038", "A039", "A040", "A041", "A042", "A047",
                  "A048", "A001", "A005", "A006", "A007", "A058", "A060",
                  "A064","A065","A066", "A170")
df2 <- df %>% 
  select(varstoselect)
df2 %>% dim()

View(df2)

if(!dir.exists("results")){
  dir.create("results")
}

sink("results/label_df2.txt")
df2_labels <- get_label(df2)
print(df2_labels)
str(df2)
sink()


# 6. Data Cleaning
## Checking the number of missing values
colSums(is.na(df2))
colSums(is.na(df2)) %>%  sum()

# 6.1. Descriptive Statistics with NA
sink("results/summary.txt")
df2 %>% summary(na.rm = T)
sink()

# Function for finding the most frequent value
find_mode <- function(x){
  unique_x <- unique(na.omit(x))
  unique_x[which.max(tabulate(match(x, unique_x)))]
}

df3 <- df2
## Loop through the dataframe to impute the NA values with most frequent vlaues
for(col in colnames(df2)){
  mode_value <- find_mode(df2[[col]])
  df3[[col]] <- impute(df[[col]], fun = function(x) mode_value)
}
colSums(is.na(df3))

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
independent.vars <- names(df3[,-1])
independent.vars
# Formula of Linear Regression
formula <- as.formula(paste("A025 ~", paste(independent.vars, collapse = " + ")))

# Fitting the linear regression formula
model <- lm(formula, data = df3)
sink("results/regression_summary.txt")
summary(model)
sink()

# 9. Convert all the variables as factors
df4 <- as.data.frame(lapply(df3, factor))

# 10. Summary of the Dataset
sink("results/full_summary.txt")
summary(df4)
sink()

# Barplots for all the variables
create_barplot <- function(df) {
  n <- dim(df)[2]
  if(!dir.exists("images")) {dir.create("images")} 
  
  for (i in 1:n) {
    var <- df[, i]
    var.df <- as.data.frame(table(var))
    colnames(var.df) <- c("Categories", "Freq")
    
    f <- ggplot(var.df, aes(x = Categories, y = Freq)) +  
      geom_col(fill = "#0073C2FF", width = 0.3) +        
      theme_classic() +  
      theme(legend.position = "top") +
      labs(title = paste("Barplot for", colnames(df)[i])) 
    
    ggsave(paste0("/images/my_fig_", i, ".png"), f, width = 6, height = 4, units = "in")  
    print(f) 
  }
}
create_barplot(df4)
