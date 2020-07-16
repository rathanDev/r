# grepl - General Regular Expressions Logic 
# grep  - 

text <- "Hi there, Do you know who you are voting for?"
text

grepl('voting', text)

grepl('dog', text)

v <- c('a', 'b', 'c', 'd', 'd', 'b')
v

res <- grep('b', v)
res
