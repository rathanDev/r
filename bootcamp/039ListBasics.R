v <- c(1,2,3)
v
m <- matrix(1:10, nrow = 2)
m
df <- mtcars
head(df)

class(v)
class(m)
class(df)

myList <- list(v, m, df)
myList

myList <- list(samleVector=v, sampleMatrix=m, sampleMatrix=df)
myList

myList[1]  
myList$samleVector

str(myList)

