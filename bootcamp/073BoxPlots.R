
library(ggplot2)

df <- mtcars

head(mtcars)
head(df)

pl <- ggplot(df, aes(x=cyl, y=mpg))
pl + geom_boxplot()

print(pl + geom_boxplot())

pl + geom_boxplot() + coord_flip()
