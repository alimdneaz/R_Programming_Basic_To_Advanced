# CSV
df = read.csv("./data/download_data_forth50.csv", header = TRUE)
dim(df)

names(df)

str(df)

head(df)

df.txt <- read.table(file.choose(), header = T, sep = "\t")
dim(df.txt)

View(df.txt)


# Excel
library(readxl)
df.excel <- read_excel("data/download_data_forth50.xlsx")
# View(download_data_forth50)
dim(df.excel)


data()
head(lynx)

df.subset <- df.excel[1:100,1:2]
dim(df.subset)

write.csv(df.subset,"./data/subsetdata.csv",row.names =F)
?write.csv()

# Sink










