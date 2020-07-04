# R basics exercise
# /udemyR/R-Course-HTML-Notes/R-for-Data-Science-and-Machine-Learning/TrainingExercises/Exercises/RBasicsExercise.html

2 ^ 5

stock.prices <- c(23,27,23,21,34)
stock.prices

daysOfWeek <- c('Mon','Tue','Wed','Thu','Fri')

names(stock.prices) <- daysOfWeek

stock.prices


mean(stock.prices)

over.23 <- stock.prices > 23
over.23

stock.prices[over.23]

max(stock.prices)

maxPrice <- stock.prices == max(stock.prices)
maxPrice

stock.prices[maxPrice]

