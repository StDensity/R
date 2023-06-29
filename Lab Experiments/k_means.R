library("ggfortify")

# Load the iris dataset
data(iris)

# Exclude the "Species" column from the dataset
data <- subset(iris, select = -c(Species))

# Perform k-means clustering with 3 centers
kmean <- kmeans(data, centers = 3)

# Generate a plot of the clustering results using autoplot
print(autoplot(kmean, data = data, frame = TRUE))
