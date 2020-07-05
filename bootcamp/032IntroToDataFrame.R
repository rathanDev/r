state.x77

?state.x77

USPersonalExpenditure

women


?women

head(women)

tail(women)


# str - structure

str(women)

summary(women)

str(state.x77)

summary(state.x77)




days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
temp <- c(21, 22, 23, 24, 25)
rain <- c(T, T, F, F, T)

data.frame(days, temp, rain)

df <- data.frame(days, temp, rain)


# 34. DataFrames - Selection and Indexing

df
df[1,]
df[,1]

df['rain']
df[,'rain']

df[1:4, c('days','temp')]

df$days
df$temp

subset(df, subset = rain==T)
subset(df, temp>23)

?order
sorted.temp <- order(df['temp'], decreasing = T)
sorted.temp
df[sorted.temp,]

sorted.temp <- order(-df['temp'], decreasing = T)
df[sorted.temp,]

df[order(df$temp),]
df[order(-df$temp),]



# Overview of DataFrames
# 
# Creating DataFrames
# Importing and exporting data
# Getting information about dataframe
# Referencing cells
#
# Referencing rows
# Referencing columns
# Adding rows
# Adding columns
# Setting column names
# Selecting multiple rows
# Selecting multiple columns
# Dealing with missing data



empty <- data.frame()
empty

c1 <- 1:10
c1

letters
c2 <- letters[1:10]
c2

df <- data.frame(col.name.1=c1, col.name.2=c2)
df
# dataframe with 10 rows and 2 columns

restult <- write.csv(df, file = 'savedDataFrame.csv')
restult
df2 <- read.csv('savedDataFrame.csv')
df2


nrow(df)
ncol(df)
colnames(df)
rownames(df)

str(df)
summary(df)

df
df[[5,2]]

df[[5,'col.name.2']]
df[5,2]
df[5,'col.name.2']
df[2:5,'col.name.2']


df$col.name.1

df[[2, 'col.name.1']] <- 9999
df

df$col.name.3 = 1:10
df

df[1,]
df[1,2]
df[1:2,2:3]

df[1:2,]

mtcars
?mtcars

head(mtcars)

mtcars$cyl

mtcars[1:nrow(mtcars),'cyl']
mtcars[['cyl']]
mtcars$cyl

mtcars[c('cyl','mpg')]
head(mtcars[c('cyl','mpg')])














