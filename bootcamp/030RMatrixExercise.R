
A <- c(1,2,3)
B <- c(4,5,6)

mat <- matrix(A, byrow = T, nrow = 1)
mat

?rbind

mat <- rbind(A, B)
mat


mat <- matrix(1:9, byrow = T, nrow = 3)
mat

is.matrix(mat)


mat2 <- matrix(1:25, byrow = T, nrow = 5)
mat2

mat2[2:3, 2:3]

mat2[4:5,4:5]

sum(mat2)


help("runif")

matrix(runif(20, min = 1, max=100), byrow = T, nrow = 4)




