Name <- c('Sam', 'Frank', 'Amy')
Age <- c(22, 25, 26)
Weight <- c(150, 165, 120) 
Sex <- c('M', 'M', 'F')  


df <- data.frame(Age, Weight, Sex)
rownames(df) <- Name

# df <- (row.names=Name, Age,Weight,Sex)

df

is.data.frame(mtcars)


mat <- matrix(1:25, nrow = 5)
mat

matDf <- data.frame(mat)

# When matrix is converted to dataframe 'X' gets prepended

colnames(matDf) <- c('V1', 'V2', 'V3', 'V4', 'V5')

matDf

matAsDf <- as.data.frame(mat)
matAsDf

df <- mtcars

head(df, 6)

df$mpg
mean(df$mpg)


sixCylCarsDf <- df[df$cyl==6, ]
sixCylCarsDf

requiredCols <- c('am', 'gear', 'carb')

sixCylCarsDf[requiredCols]

head(df)

df$performance <- df$hp / df$wt

head(df)

help("round")


df$performance <- round(df$performance)

df$performance <- round(df$hp / df$wt, digits = 2)
df
head(df)

df[df$hp > 100,]

df[df$hp>100 & df$wt>2.5, 'mpg']
avgMpg <- mean(df[df$hp>100 & df$wt>2.5, 'mpg'])

round(avgMpg, 2)

df
df['Hornet Sportabout', 'mpg']


