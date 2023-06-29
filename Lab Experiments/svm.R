# Load the mtcars dataset
data(mtcars)

# Split the dataset into training and test sets
split <- sample(nrow(mtcars), size = nrow(mtcars) * 0.8)
train_data <- mtcars[split, ]
test_data <- mtcars[-split, ]

# Load the e1071 library for SVM
library(e1071)

# Train the SVM model
model <- svm(am ~ ., data = train_data)

# Make predictions on the test set
pred <- predict(model, test_data)

# Convert continuous predictions to binary predictions
bin_pred <- ifelse(pred > 0.5, 1, 0)

# Print the predicted values, binary predictions, and actual values from the test set
print(data.frame(pred, bin_pred, test_data$am))
