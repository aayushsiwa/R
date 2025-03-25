# Load dataset
data(iris)

# Normalize data
normalize <- function(x) (x - min(x)) / (max(x) - min(x))
iris[1:4] <- lapply(iris[1:4], normalize)

# Split dataset
set.seed(42)
train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Train KNN model
library(class)
pred_labels <- knn(train_data[ , -5], test_data[ , -5], train_data$Species, k = 3)

# Compute Accuracy
accuracy <- mean(pred_labels == test_data$Species)
print(paste("Accuracy:", round(accuracy, 2)))
