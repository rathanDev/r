# Math functions with R
# 
# abs:    computes the absolute value
# sum:    returns the sum of all the values present in the input
# mean:   computes the arithmatic mean
# round:  round values (additional arguments to nearest)

abs(2)
abs(-2)

v <- 1:5
sum(v)

mean(v)

res <- sapply(sapply(v, sum))
res

dec <- 2.333456
round(dec)
round(dec, digits = 3)

# Try
# R Reference Card



