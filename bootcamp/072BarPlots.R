
library(ggplot2)

mpg

??mpg

df <- mpg

colnames(df)

df$drv

pl <- ggplot(df, aes(x=class))
pl # empty grid 

pl + geom_bar()

pl + geom_bar(color='black', fill='blue')



pl + geom_bar(aes(fill=drv))

# drv - the type of drive train
# f - front wheel drive
# r - rear wheel drive 
# 4 - 4wd 










