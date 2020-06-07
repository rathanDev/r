n1 <- 15
n1
typeof(n1)

install.packages("httr")
install.packages('dplyr', dependencies=TRUE)
installed.packages('magrittr')

library(httr)
library(magrittr)
library(dplyr)
library(jsonlite)

url <- "https://w9gdzmoox4.execute-api.us-east-1.amazonaws.com/dev/some-public-url"
body <- list(latitude = 1.3504687, longitude = 103.87592219999999, distance = 7)
response <- POST(url, body = body, encode = 'json')
# content(response)
parsedResponse = content(response, as = "parsed", encoding = "UTF-8")

df <- fromJSON(parsedResponse) %>% as.data.frame

# with(df, plot(latitude, longitude))
# View(df)

df$latitude = as.numeric(df$latitude)
df$longitude = as.numeric(df$longitude)

# summary(df)
# names (df)




fromJSON(url, body, flatten = TRUE)

