v <- c(1,2,3,4,5)

for (var in v) {
  print(paste("Hello on ", var))
}



m <- matrix(1:25, nrow = 5)
m

print("Print all the elements in matrix one in line")
for(x in m) {
  print(x)
}

mat <- matrix(1:36, nrow = 6, byrow = T)
mat

print("Print row by row")
for(row in 1:nrow(mat)) {     # 1 to 5 
    for(col in 1:ncol(mat)) {
      print(paste("Row:", row, " Col:", col, " Value:", mat[row,col]))
    }
  print(paste("End of row", row))
}




