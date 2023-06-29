library(rpart)
library(rpart.plot)

# Load the iris dataset
data("iris")

# Build the decision tree model
tree <- rpart(Species ~ Sepal.Length + Sepal.Width, data = iris, method = "class")

# Print the decision tree
print(tree)

# Plot the decision tree
rpart.plot(tree)
