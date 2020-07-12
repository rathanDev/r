sayHello <- function(name="there") {
  greeting <- paste("Hello ", name)
  #print(greeting)
  return(greeting)
}

g <- sayHello("Jana")
print(g)

sayHello()



multiply <- function(n1, n2) {
  return(n1 * n2)
}

multiply(3, 4)



checkAvailability <- function(integerE, vectorE) {
  
  for(e in vectorE) {
    if(e == integerE) {
      return(T)
    }
  } 
  
  return(F)
}

checkAvailability(3, c(1,2,3,4,5))
checkAvailability(1, c(2,3,3,5,5))


counter <- function(i, v) {
  count <- 0
  for(e in v) {

    if(i == e) {
      count <- count + 1
    }

  }
  return (count)
}

counter(1, c(1,2,1,3,3,1,4))
counter(6, c(1,2,1,3,3,1,4))


getBars <- function(qty) {
  
  bar1 <- qty %% 5
  
  remainingQty <- qty - (bar1)    
  bar5 <- remainingQty / 5
  
  return(c(bar5, bar1))
}

getBars(6)
getBars(3)
getBars(10)
getBars(17)


summer <- function(nums) {
  
  tot <- 0
  for(n in nums) {
    if(n %% 3 != 0) {
      tot <- tot + n
    }
  }
  
  return(tot)
  
}

summer(c(1,2,4))
summer(c(3,6,4))
summer(c(3,6,9))
summer(c(9,11,12))















