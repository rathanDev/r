# Built in R features and functions
# seq()     Create sequences
# sort()    Sort a vector
# rev()     Reverse elements in object
# str()     Show the structure of an object
# append()  Merge objects together (works on vectors and lists)
# is. & as.

seq(0,10, by=2)
0:10

seq(0,24,by=3)

help("seq")

??seq




v <- c(1,4,7,2,13,3,11)
v
sort(v)
sort(v, decreasing = T)

a <- c('d', 'a', 'c', 'b')
a
sort(a)




v
rev(v)




str(v)
str(a)
# built in dataframe mtcars
str(mtcars)





v1 <- 1:10
v1
v2 <- 35:40
v2
append(v1,v2)
ap <- append("hello", 3)
str(ap)
p <- print("hello", 3)




# Checking data type  -   is.
# Converting          -   as.

v <- c(1,2,3)
is.vector(v)
is.data.frame(v)
is.data.frame(mtcars)


v
as.list(v)
as.matrix(v)



