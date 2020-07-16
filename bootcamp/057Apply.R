sample(x = 1:10, 1)
sample(x = 1:100, 4)

v <- c(1,2,3,4,5)

addRand <- function(x) {
  ran <- sample(1:100,1)
  return (x+ran)
}

addRand(1)

res <- lapply(v, addRand)
res
str(res)

help("lapply")
# returns a list


res2 <- sapply(v, addRand)
res2
str(res2)

help("sapply")
# returns a vector

times2 <- function(num) {
  return (num*2)  
}

v <- 1:5

sapply(v, times2)


# Anonymous functions

v <- 1:5
result <- sapply(v, function(num) {return(2*num)})
result


addChoice <- function(num, choice) {
  return(num+choice)
}

sapply(v, addChoice)
# Error in FUN(X[[i]], ...) : argument "choice" is missing, with no default

sapply(v, addChoice, choice=2)

















