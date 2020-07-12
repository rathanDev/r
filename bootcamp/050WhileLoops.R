x <- 0

while(x<10) {
  print(paste('x equals ', x))
  x <- x + 1
}


x <- 0
while (x<20) {
  print(paste('x is', x))
  x <- x+1
  
  if(x == 11) {
    print('X is 11 Now, breaking the loop')
    break
  }
}

