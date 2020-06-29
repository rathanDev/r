df <- data.frame("SN" = 1:4, Age=c(21,25,27,29), "Name"=c("John","Dora","Jack","Dorsey"))

str(df)

View(df)

df$SN
df$Age

head(df, n=5)
head(df)

df[df$Age > 22,]

getCol <- function(row) {
  print("Inside GetCol")
  print(row)
  print(row["SN"])
  label <- ""
  if(row["Age"] > 22) {
    label = paste("label:",row["Age"])
  }
  return(label)
}

df$label <- apply(df, 1, getCol)

df
