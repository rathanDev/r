pacman::p_load(rio)

browseURL("http://j.mp/2aFZUrJ")

rio_csv <- import("C:/VProjects/resources/mbb.csv")

head(rio_csv)

rio_txt <- import("C:/VProjects/resources/mbb.txt")
head(rio_txt)

rio_xlsx <- import("C:/VProjects/resources/mbb.xlsx")
head(rio_xlsx)



# Data Viewer

?View

View(rio_csv)

# Reading file with missing data 
r_txt2 <- read.table("C:/VProjects/resources/mbb.txt",
                     header = TRUE,
                     sep = "\t")
head(r_txt2)


trends.csv <- read.csv("C:/VProjects/resources/mbb.csv", header = TRUE)
head(trends.csv)

