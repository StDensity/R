# Load required dataset
data(mtcars)

# Set random seed for reproducibility
set.seed(1)

# Split the dataset into training and testing data
split <- sample(nrow(mtcars), size = 0.8 * nrow(mtcars))
train_data <- mtcars[split, ]

# Build the logistic regression model
model <- glm(vs ~ mpg + cyl + disp, data = train_data, family = binomial())

# Prompt user for car information
car_name <- readline("Enter the car name: ")
mpg <- as.numeric(readline("Enter the mpg: "))
cyl <- as.numeric(readline("Enter the cyl: "))
disp <- as.numeric(readline("Enter the disp: "))

# Create test data for prediction
test_data <- data.frame(mpg, cyl, disp, row.names = car_name)

# Perform prediction using the trained model
pred <- predict(model, newdata = test_data, type = "response")

# Convert predicted probabilities to binary predictions
binary_pred <- ifelse(pred > 0.5, 1, 0)

# Print the predicted probabilities and binary predictions
print(pred)
print(binary_pred)
