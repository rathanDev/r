# c - Combine

# numeric vector
nvec <- c(1,2,3,4,5)
nvec
class(nvec)

# character vector
cvect <- c("S", "L")
cvect
class(cvect)

# Vector contains similar kind of elements

v <- c(TRUE, 20, 40)
v
class(v)

v <- c("USA", 20, 40)
v
class(v)

# Can add labels to vector

temperatures <- c(72, 71, 68, 70, 69, 73, 70)
temperatures

days <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
days

names(temperatures) <- days

temperatures



