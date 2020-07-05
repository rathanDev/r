head(mtcars)
write.csv(head(mtcars), 'exampleCsvFile.csv')

ex <- read.csv('exampleCsvFile.csv')
ex


help("read.csv")
