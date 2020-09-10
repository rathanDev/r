
df <- read.csv('./resources/student-mat.csv', sep = ';')
df

head(df)

is.na(df)

any(is.na(df))

str(df)

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)

df

# Num only
num.cols <- sapply(df, is.numeric)
num.cols

# filter
cor.data <- cor(df[,num.cols])

cor.data
print(cor.data)

install.packages("corrgram")

install.packages("corrplot")

corrplot(cor.data, method = 'color')

corrgram(df)

help("corrgram")

corrgram(df, order = TRUE, lower.panel = panel.shade, upper.panel = panel.pie, text.panel = panel.txt)


ggplot(df, aes(x=G3)) + geom_histogram(bins=20, alpha=0.5, fill='blue')








