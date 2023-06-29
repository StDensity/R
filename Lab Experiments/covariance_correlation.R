# Load the iris dataset
data(iris)

# Extract the Sepal.Length and Sepal.Width columns
samp1 <- iris$Sepal.Length
samp2 <- iris$Sepal.Width

# Compute the variance, covariance, and correlation
variance <- round(var(samp1), 4)
covariance <- round(cov(samp1, samp2), 4)
correlation <- round(cor(samp1, samp2), 4)

# Print the results
print(paste("Variance:", variance, "Covariance:", covariance, "Correlation:", correlation))
