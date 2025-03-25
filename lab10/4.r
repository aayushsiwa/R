# Load necessary library
library(rpart)

# Load dataset
data <- read.csv("../data/breast.csv")

# Drop 'id' column (not useful for prediction)
data <- data[, !(names(data) %in% c("id"))]

# Ensure 'diagnosis' is a factor (B = Benign, M = Malignant)
data$diagnosis <- as.factor(data$diagnosis)

# Debug: Check how many missing values are present
print(colSums(is.na(data)))

# Instead of dropping all rows, fill missing values with median (for numerical columns)
for (col in colnames(data)) {
  if (any(is.na(data[[col]]))) {
    if (is.numeric(data[[col]])) {
      data[[col]][is.na(data[[col]])] <- median(data[[col]], na.rm = TRUE)
    } else {
      data[[col]][is.na(data[[col]])] <- as.character(mode(data[[col]]))
    }
  }
}

# Debug: Print class distribution
print(table(data$diagnosis))

# Ensure both classes exist after cleaning
if (length(unique(data$diagnosis)) < 2) {
  stop("Error: The dataset must contain at least two classes for classification.")
}

# Ensure we have enough samples from both classes
min_class_count <- min(table(data$diagnosis))
if (min_class_count < 5) {  
  stop("Error: Not enough samples from one of the classes for training.")
}

# Split dataset (80% training, 20% testing)
set.seed(42)
train_index <- sample(1:nrow(data), 0.8 * nrow(data))
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# Debug: Print class distribution in training and testing sets
print(table(train_data$diagnosis))
print(table(test_data$diagnosis))

# Train Decision Tree Model
model <- rpart(diagnosis ~ ., data = train_data, method = "class")

# Make predictions
predictions <- predict(model, test_data, type = "class")

# Compute Accuracy
accuracy <- mean(predictions == test_data$diagnosis)
print(paste("Accuracy:", round(accuracy, 2)))

# Plot Decision Tree
plot(model, uniform = TRUE, main = "Decision Tree for Breast Cancer Diagnosis")
text(model, use.n = TRUE, cex = 0.8)
