library(ggplot2)

getwd()

df <- read.csv('resources/student-mat.csv', sep=';')
df

install.packages("caTools")

library(caTools)

set.seed(101)

sample <- sample.split(df$G1, SplitRatio = 0.7)

sample

train <- subset(df, sample == TRUE)

test <- subset(df, sample == FALSE)


## The general model of building a linear regression model in R
## looks like this
# model <- lm(y ~ x1 + x2, df)
## or to use all the features in your data
# model <- lm(y ~., df)

# TRAIN and BUILD Model
model <- lm(G3 ~ ., data = train)

summary(model)



res <- residuals(model)

class(res)

res <- as.data.frame(res)
head(res)

ggplot(res, aes(res)) + geom_histogram(fill='blue', alpha=0.5)










