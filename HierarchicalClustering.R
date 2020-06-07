# Hierarchical clustering

# Hierarchical vs set k
# Measures of distance
# Divisive vs agglomerative

pacman::p_load(dplyr)

library(datasets)

?mtcars
head(mtcars)

# All the rows but selected columns
cars <- mtcars[, c(1:4, 6:7, 9:11)]

head(cars)

# Save hierarchical clustering to "hc".
# uses pipes from dplyr
hc <- cars   %>%  # Get cars data 
      dist   %>%  # Compute distance/dissimilarity matrix
      hclust      # Computer hierarchical clusters

# Plot dendogram
plot(hc)  




