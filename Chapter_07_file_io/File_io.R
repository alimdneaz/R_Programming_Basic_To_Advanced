# Read: CSV Data
df = read.csv("./12_rna_gene_metadata.csv", header = T)
View(df)

# Select Only Gene Id and Gene Name
names(df)
str(df)
df2 = df[,c(6,8)]
View(df2)

# Write
write.csv(df2,"filtered_data.csv", row.names = FALSE)

# Read TXT
df.txt = read.table("./data_text.txt", 
           header = TRUE,
           sep = "\t")
head(df.txt)
df.txt.2 = df.txt[, c(6,8)]
# Write txt file
write.table(df.txt.2, "data_text_filtered.txt", row.names = FALSE)

# Read Excel
library(readxl)
library(writexl)
# install.packages("writexl")


df.excel = read_excel("./Excel_data.xlsx")
View(df.excel)
write_xlsx(df.excel, "df_xla_two.xlsx")


library(readxl)
Excel_data <- read_excel("Excel_data.xlsx")
View(Excel_data)


# sink()
sink("output.txt")
head(df)
summary(df)
sink()
summary(df)

# get working directory
getwd()
#setwd("G:/002_Mabia_apu/001_Shourav_Vai")


# base R

# R default datasets
data()
df = mtcars
df
write.csv(mtcars, "mtcars.csv")
