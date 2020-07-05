install.packages("readxl")
library(readxl)

# C:\VProjects\r\resources\Sample-Sales-Data.xlsx

excel_sheets('resources/Sample-Sales-Data.xlsx')

df <- read_excel('resources/Sample-Sales-Data.xlsx')
head(df)

df$Value

summary(df)

filePath <- 'resources/Sample-Sales-Data.xlsx'
entire.workbook <- lapply(excel_sheets(filePath), read_excel, path=filePath)
entire.workbook

install.packages("xlsx")

Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jdk-13.0.2')
library(rJava)

library(xlsx)

head(mtcars)

write.xlsx(head(mtcars), 'outputSample.xlsx')

