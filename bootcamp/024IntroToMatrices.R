1:10

# Integer vector

v <- 1:10
v
class(v)

# 2 dimensional matrix

matrix(v)

matrix(v, nrow = 2)

matrix(1:12, byrow = FALSE, nrow = 4)

matrix(1:12, byrow = T, nrow = 4)


goog <- c(450, 451, 452, 453, 454)
msft <- c(230, 231, 232, 233, 234)

stocks <- c(goog, msft)
stocks

stocks.matrix <- matrix(stocks)
stocks.matrix

stocks.matrix <- matrix(stocks, byrow = T, nrow = 2)
stocks.matrix

days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
st.names <- c("GOOG", "MSFT")

colnames(stocks.matrix) <- days
rownames(stocks.matrix) <- st.names

stocks.matrix







