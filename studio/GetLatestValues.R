library(httr)
library(magrittr)
library(dplyr)
library(jsonlite)

authUrl <- "~~~~"
authBody <- list(username = "~~~", password = "~~~")

authResponse <- POST(authUrl, body = authBody, encode = 'json')
# content(response)
authParsedResponse <- content(authResponse, as = "parsed", encoding = "UTF-8")
# authParsedResponse

print(authParsedResponse$token)


oilUrl <- "https://www.adomain.com/api/ss/latest/?date=2020-05-05&customer_id=1003&compressor_id=10"

oilAuthHead <- paste("Bearer ", authParsedResponse$token)
# authHead

oilResponse <- GET(url = oilUrl,
                   add_headers(.headers = c("Authorization" = oilAuthHead )))

oilParsedResponse <- content(oilResponse, as = "parsed", encoding = "UTF-8")
typeof(oilParsedResponse)

oilParsedResponseData <- oilParsedResponse$data
View(oilParsedResponseData)

filteredDf <- data.frame(oilParsedResponseData[c("~~", "~~")])
dft <- data.frame(component=names(filteredDf), value=unlist(filteredDf))
View(dft)



















oilParsedResponseDataT <- data.frame(component=names(oilParsedResponseData), value=unlist(oilParsedResponseData))
oilParsedResponseDataT
typeof(oilParsedResponseDataT)


l <- list(a=11, b=22, c=33, d=44)
l
data.frame(l)
data.frame(component=names(l), value=unlist(l))


typeof(oilParsedResponseData)
class(oilParsedResponseData)

names(oilParsedResponse)
names(oilParsedResponse$data)

View(oilParsedResponse$data)
