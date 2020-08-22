library(ggplot2)

head(mpg)

pl <- ggplot(mpg, aes(x=displ, y=hwy)) + geom_point()
pl

pl2 <- pl + coord_cartesian(xlim = c(1,4), ylim = c(15,30))
pl2

head(mpg)


pl + facet_grid(. ~ cyl)

pl + facet_grid(drv ~ .)

pl + facet_grid(drv ~ cyl)

pl + facet_grid(cyl ~ drv)

# 