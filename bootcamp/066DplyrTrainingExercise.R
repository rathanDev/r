library(dplyr)
head(mtcars)


df <- mtcars
head(df)

??filter

help("filter")

res <- df %>% filter(mpg>20) %>% filter(cyl==6)
res

df %>% arrange(cyl, desc(wt)) 

# https://www.datanovia.com/en/lessons/select-data-frame-columns-in-r/

df %>% select(mpg, hp)

distinct(df, df$gear)

df %>% distinct(gear)

df['Performance'] <- df$hp / df$wt
head(df)

mean(df$mpg)

df %>% filter(cyl==6) %>%  pull(hp) %>% mean







