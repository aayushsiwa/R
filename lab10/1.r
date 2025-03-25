# Load datasets
train_data <- read.csv("../data/titanic_train.csv")
test_data <- read.csv("../data/titanic_test.csv")

# Preprocessing (Handle missing values)
train_data <- na.omit(train_data)
test_data <- na.omit(test_data)

# Ensure 'Survived' is a categorical variable
train_data$Survived <- as.factor(train_data$Survived)

# Train Decision Tree
library(rpart)
model <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare, data = train_data)

# Make predictions
predictions <- predict(model, test_data, type = "class")

# Load actual test labels
test_labels <- read.csv("../data/titanic_test_labels.csv")

# Merge test labels with test data
test_data <- merge(test_data, test_labels, by = "PassengerId")

# Compute accuracy
if ("Survived" %in% colnames(test_data)) {
    accuracy <- mean(predictions == test_data$Survived)
    print(paste("Accuracy:", round(accuracy, 2)))
} else {
    print("Predictions completed. Test dataset does not have 'Survived' for accuracy calculation.")
}

# Save predictions
test_data$Predicted_Survived <- predictions
write.csv(test_data, "titanic_predictions.csv", row.names = FALSE)
