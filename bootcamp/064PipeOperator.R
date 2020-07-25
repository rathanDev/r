library(dplyr)

df <- mtcars
df

head(df)


# Nesting                   - efficient memory usage, but hard to read
result <- arrange(sample_n(filter(df, mpg>20), size=5),desc(mpg))
result



# Multiple assignments      - more memory usage
mpg20 <- filter(df, mpg>20)
sample5 <- sample_n(mpg20, size = 5)
result <- arrange(sample5, desc(mpg))
result



# Pipe operator             - readable and efficient memory usage
result <- df %>% filter(mpg>20) %>% sample_n(size = 5) %>% arrange(desc(mpg))
result










