library(ggplot2)

df <- mtcars

pl <- ggplot(df, aes(x=wt, y=mpg))
pl

# Geometry

pl + geom_point()


pl + geom_point(alpha=0.5, size=5)


pl
geom_point(aes(size=hp))

pl + geom_point(aes(size=hp))

# notice my scatter points grow bigger as horse power grow bigger

# Let's go ahead and keep playing around with this idea



pl + geom_point(aes(shape=factor(cyl)), size=1)

pl + geom_point(aes(shape=factor(cyl), color=factor(cyl)), size=3)


pl2 <- pl + geom_point(aes(color=hp), size=5)
pl2 + scale_color_gradient(low='blue', high = 'red')
































