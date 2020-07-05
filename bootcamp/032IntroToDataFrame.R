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



