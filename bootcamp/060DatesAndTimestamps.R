# Dates

Sys.Date()

today <- Sys.Date()
class(today)

c <- "1991-10-12"
class(c)

date <- as.Date(c)
class(date)

date <- as.Date("Nov-03-90", format="%b-%d-%y")
date

as.Date("June,01,2002", format="%B,%d,%Y")

as.POSIXct("11:02:03", format="%H:%M:%S")

help("strptime")
# Date Time conversion guide

strptime("11:02:03", format = "%H:%M:%S")
