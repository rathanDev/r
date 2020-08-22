library(ggplot2)

head(mpg)


pl <- ggplot(mpg, aes(x=hwy)) + geom_histogram()
pl



pl <- ggplot(mpg, aes(x=hwy)) + geom_histogram(fill='red', alpha=0.5)
pl


pl <- ggplot(mpg, aes(x=manufacturer))
pl + geom_bar()

pl2 <- pl + geom_bar(fill='blue')
pl2



pl2 <- pl + geom_bar(aes(fill=factor(cyl)))
pl2


head(txhousing)


pl <- ggplot(txhousing, aes(x=sales, y=volume))

pl2 <- pl + geom_point()
pl2


pl2 <- pl + geom_point(color='blue', alpha=0.3)
pl2

pl3 <- pl2 + geom_smooth(color = 'red')

















