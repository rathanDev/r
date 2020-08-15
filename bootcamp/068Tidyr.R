# Guide to using Tidyr



# install.packages("tidyr")

# Tidyr helps us clean data

# install.packages("data.table")
# data.table is a complimentary package for tidyr

# Speed and cleaner syntax are the expecations on a good package

library(tidyr)

library(data.table)
# data.table has few more features than data.frame
# data.table extends data.frame

# gather, spread, separate and unite

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998, 1999, 2000, 1998, 1999, 2000, 1998, 1999, 2000)
q1 <- runif(9, min = 0, max = 100)
q2 <- runif(9, min = 0, max = 100)
q3 <- runif(9, min = 0, max = 100)
q4 <- runif(9, min = 0, max = 100)

df <- data.frame(company=comp, year=yr, qtr1=q1, qtr2=q2, qtr3=q3, qtr4=q4)
df


gatheredDf <- gather(df, Quarter, Revenue, qtr1:qtr4)
head(gatheredDf, 20)


gdf <- df %>% gather(Quater, Revenue, qtr1:qtr4)
head(gdf, 20)





stocks <- data.frame(
  time = as.Date('2019-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks



head(stocks)

stocks.gathered <- stocks %>% gather(stock, price, X:Z)
stocks.gathered <- stocks %>% gather(stock, price, X, Y, Z)
stocks.gathered

stocks.gathered %>% spread(stock, price)

spread(stocks.gathered, time, price)

df <- data.frame(new.col=c(NA, "a-x", "b-y", "c-z"))
df


separate(data = df, col = new.col, into = c("abc", "xyz"), sep = '-')



# Unite - a complement function
# a convenient function to paste together multiple columns to one


df.sep <- separate(data = df, col = new.col, into = c("abc", "xyz"))
df.sep

unite(df.sep, new.joined.col, abc, xyz)

unite(df.sep, new.joined.col, abc, xyz, sep = '-')









