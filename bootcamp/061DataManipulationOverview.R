# Dplyr: Manipulating Data
# Tidyr: Cleaning Data

# Pipe operator %>%


# ----- DPLYR

# install.packages('dplyr')
# install.packages('nycflights13')

library(dplyr)
library(nycflights13)

# filter()    (and  slice())
# arrange()
# select()    (and  rename())
# distint()
# mutate()




head(flights)

summary(flights)

head(
  filter(flights, month==11, day==3, carrier=='AA'), 
  5)

head(flights[flights$month==11 & flights$day==3 & flights$carrier=='AA'])


flights
flights['year'==2013]
class(flights$year[1])

flights$year[1] == 2013

class(flights$year[1])


flights$year == 2013

flights[T]
flights[flights$year == 2013]

length(flights)
length(flights$year)


slice(flights,1:10)

flights$year == 2013

slice(flights, 1:19)



arrange(flights, year, month, day, dep_time)


arrange(flights, year, month, day, desc(dep_time))

class(flights)

flights[1]




# seleect

select(flights, carrier)
head(select(flights, carrier, arr_time))

# rename()

rename(flights, airlineCarrier = carrier)
rename(flights, flightYear=year)


# distinct()

select(flights, carrier)
distinct(select(flights, carrier))


# mutate()
# returns the entire dataframe

mutate(flights, newCol = arr_delay - dep_delay)

# transmute()
# returns only the new col

transmute(flights, newCol=arr_delay-dep_delay)


flights


summarise(flights, avgAirTime=mean(air_time, na.rm=T))

summarise(flights, totalAirTime=sum(air_time, na.rm=T))

sample_n(flights, 10)

sample_frac(flights, 0.2)





