n = c(2,3,5)
s = c("aa","bb","cc")
b = c(TRUE, FALSE, TRUE)
df = data.frame(n,s,b)
df

typeof(df)
class(df)

names(df)
ncol(df)
nrow(df)
length(df)

df[b]
df[n]

df$n
typeof(df$s)
class(df$s)


df

df["n"]



str(trees)
head(trees)

trees[2:4,]
trees_subdf = trees[1,]
trees_subdf


trees[2:4,]
trees[2:4,2]

head(trees)
trees[2,]
trees[2,"Girth"]
trees[2,"Girth"] <- 11.11
trees[2,"Girth"]


subTrees = trees[0:3,]
subTrees
subTrees = rbind(subTrees, list(1.1,1,1.1))
subTrees

subTrees = cbind(subTrees,Name=c("aa","bb","cc","dd"))
subTrees


subTrees$Name <- NULL
subTrees

subTrees <- subTrees[-1,]
subTrees


plot(subTrees)




