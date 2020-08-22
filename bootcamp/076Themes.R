library(ggplot2)

theme_set(theme_minimal())

pl <- ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()

pl


# ------------------------------

# Look at the above coding style
# It's worth noting it

# -----------------------------


pl + theme_dark()

# install.packages("ggthemes")
library(ggthemes)

# Now you have lot of options for themes

pl + theme_classic()
pl + theme_economist_white()

pl + theme_economist()












