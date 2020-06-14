pacman::p_load(pacman, dplyr)

library(datasets)

?USJudgeRatings
head(USJudgeRatings)

data <- USJudgeRatings
data

# Define variable groups 
x <- as.matrix(data[-12])   # Do not include the retention column
y <- data[, 12]             # read all of the rows, but only 12th column

reg1 <- lm(y ~ x)

# Results
reg1
summary(reg1)


# More summaries 

anova(reg1)   # Analysis of variant table 
coef(reg1)    # Coefficient same as regression
confint(reg1) # CI for coefficients - Confidence Intervals
resid(reg1)   # Resuduals case by case

dev.off()
graphics.off()

# Solves the error  -   `Error in plot.new() : figure margins too large`
graphics.off() 
par("mar") 
par(mar=c(1,1,1,1))

hist(residuals(reg1))

#Additional models 

# Use 2 additional libraries 

# lars - least angle regression
# caret - classification and regression training
p_load(lars, caret)

# stepwise regression - Conventional step wise regression
stepwise <- lars(x, y, type = "stepwise")

# stagewise - similar to stepwise but with better generalizability
forward <- lars(x, y, type = "forward.stagewise")

# LAR - Least Angle Regression 
lar <- lars(x, y, type = "lar")

# LASSO - Least Absolute Shrinkage and Selection Operator
lasso <- lars(x, y, type = "lasso")

# Happy Computing






