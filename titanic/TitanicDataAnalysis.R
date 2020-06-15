# Reference: Introduction to Data Science with R - Data Analysis Part 1 
# https://www.youtube.com/watch?v=32o0DnuRjfg&t=2078s

# > setwd(choose.dir())
# > getwd()
# [1] "C:/VProjects/r/titanic"


train <- read.csv("train.csv", header = TRUE)
test <- read.csv("test.csv", header = TRUE)

# Add a "Survived" variable to the test set to allow for combining data sets 
# test[1,4]   1st row and 4th column
# test[,]     all the rows and all the columns
test.survived <- data.frame(Survived = rep("None", nrow(test)), test[,])

?data.frame
?nrow

data.combined <- rbind(train, test.survived)

?str

data.combined$Survived <- as.factor(data.combined$Survived)
data.combined$Pclass <- as.factor(data.combined$Pclass)

# @35th minute

str(data.combined)

# take a look at gross survival rates 
table(data.combined$Survived)

library(ggplot2)

table(data.combined$Pclass)

train$Pclass <- as.factor(train$Pclass)

ggplot(train, aes(x = Pclass, fill = factor(Survived))) + 
  geom_bar() +
  xlab("Pclass") +
  ylab("Total Count") +
  labs(fill = "Survived")

# @46th minute

str(train)

str(data.combined)


head(as.character(train$Name))

# Maiden Name is name before marriage

dup.names <- as.character(data.combined[which(duplicated(data.combined$Name)), "Name"])
dup.names

data.combined[which(data.combined$Name %in% dup.names),] 


# What's up with the Miss and Mr thing?
library(stringr)

misses <- data.combined[which(str_detect(data.combined$Name, "Miss.")), ] 
misses[, 1:9]

mrses <- data.combined[which(str_detect(data.combined$Name, "Mrs.")),]  
mrses[1:5, 1:9]

# Check out males to see if pattern continues
males <- data.combined[which(data.combined$Sex == 'male'), ]
males[1:5,1:9]

# Expand upon the relationship between 'Survived' and 'Pclass' by adding the new 'Title' variable to the
# data set and then explore a potential 3-dimensional relationship

# Create a utility function to help with title extraction 
extractTitle <- function(name) {
  
  # print(name)
  # print(grep("Miss", name)) 
  # print(grep("Miss", name) > 0)
  # 
  # if(length(grep("Miss", name) > 0) ) {
  #   print("------------------------------------------------------------")
  # }
  # 
  # name <- as.character(name)
  
  if(length(grep("Miss", name) > 0)) {
    return("Miss")
  } else if(length(grep("Master", name) > 0) ) {
    return("Master")
  } else if(length(grep("Mrs", name) > 0)) {
    return("Mrs")
  } else if(length(grep("Mr", name) > 0)) {
    return("Mr")
  } else {
    return("Other")
  }
}


titles <- NULL
for(i in 1:nrow(data.combined)) { #
  # print(data.combined[i, "Name"])
  titles <- c(titles, extractTitle(data.combined[i, "Name"]))
}
titles

as.factor(titles)

data.combined$Title <- as.factor(titles)

data.combined$title <- NULL

data.combined

#  @1.15.0

# Since we only have survived labels for the train set, only use the first 891 rows 
ggplot(data.combined[1:891,], aes(x = Title, fill = Survived)) +
  geom_bar()
  facet_wrap(~Pclass) +
  ggtitle("Pclass") + 
  xlab("Title") +
  ylab("Total Count") +
  labs(fill = "Survived")


  
  
