a <- matrix()

if(a == 1) {
  print("Hello")
}

if(a %% 2 == 0) {
  print("Even Number")
} else {
  print("Not even")
}

if(is.matrix(a)) {
  print("Is a matrix")  
} else {
  print("Not a matrix")
}

aVector <- c(5:7)
aVector

order(aVector, decreasing = T)
order(c(5:7), decreasing = T)

sortNumbers <- function (c) {
  s <- order(c, decreasing = F)
  return(s)
}

sortNumbers(seq*6:9)

