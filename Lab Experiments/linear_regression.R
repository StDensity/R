# Read CSV file
df <- read.csv("Path")

# Linear regression model
model <- lm(weight ~ height)
print(model)

# Prediction
pred <- data.frame(height = 170)
print(predict(model, pred))

# Scatter plot
plot(weight, height, main = "Plot", abline(lm(height ~ weight)), xlab = "weight (KG)", ylab = "height (CM)")
