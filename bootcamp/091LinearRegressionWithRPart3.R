library(caTools)
library(ggplot2)

getwd()

df <- read.csv('resources/student-mat.csv', sep=';')
df

set.seed(101)

sample <- sample.split(df$G1, SplitRatio = 0.7)
sample

train <- subset(df, sample == TRUE)
test <- subset(df, sample == FALSE)

# Predict G3 based of all the features using the train data set
model <- lm(G3 ~ ., data = train)
summary(model)

plot(model)


G3.predections <- predict(model, test)
G3.predections

results <- cbind(G3.predections, test$G3)
results

colnames(results) <- c('predicted', 'actual')
head(results)

results <- as.data.frame(results)
results

toZero <- function(x) {
  if(x<0) {
    return(0)
  } else {
    return(x)
  }
}

min(results)

results$predicted

results$predicted <- sapply(results$predicted, toZero)

head(results$predicted)

min(results$predicted)


# Mean Squared Error
mse <- mean( (results$actual - results$predicted)^2 )
mse

# Root Mean Squared Error - RMSE
mse ^ 0.5



sse <- sum( (results$predicted - results$actual)^2 )
sse

 






