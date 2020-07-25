library(dplyr)
head(mtcars)


df <- mtcars
head(df)

??filter

help("filter")



res <- df %>% filter(mpg>20) %>% filter(cyl==6)
res

# filter(df, mpg>20, cyl==6)



df %>% arrange(cyl, desc(wt)) 

# arrange(df, cyl, desc(wt))



# https://www.datanovia.com/en/lessons/select-data-frame-columns-in-r/

df %>% select(mpg, hp)

# select(df, mpg, hp)



distinct(df, df$gear)

df %>% distinct(gear)

# distinct(select(df, gear))




df['Performance'] <- df$hp / df$wt
head(df)

# mutate(df, Performance2=hp/wt)




# mean(df$mpg)

# df %>% filter(cyl==6) %>%  pull(hp) %>% mean

df %>% filter(cyl==6) %>% summarise(avg_hp = mean(hp))





