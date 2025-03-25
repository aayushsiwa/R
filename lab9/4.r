# Load dataset
data(iris)

# Select only two classes (Binary Classification: Setosa vs. Versicolor)
iris <- iris[iris$Species != "virginica", ]
iris$Species <- ifelse(iris$Species == "setosa", 1, -1)  # Convert labels to +1 and -1

# Split dataset (80% training, 20% testing)
set.seed(42)
train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Prepare data (Add bias term for intercept)
X_train <- as.matrix(cbind(1, train_data[, 1:4]))  # Add bias term (column of 1s)
y_train <- train_data$Species

# Define the SVM hinge loss function
svm_loss <- function(w, X, y, lambda) {
  margin <- y * (X %*% w)  # Compute margin correctly
  hinge_loss <- sum(pmax(0, 1 - margin))  # Hinge loss
  regularization <- lambda * sum(w[-1]^2)  # L2 regularization (exclude bias term)
  return(hinge_loss + regularization)
}

# Initialize weight vector
w_init <- rep(0, ncol(X_train))  # Initialize weights (including bias term)

# Optimize SVM using built-in 'optim()'
lambda <- 0.01  # Regularization parameter
svm_model <- optim(w_init, svm_loss, X = X_train, y = y_train, lambda = lambda, method = "BFGS")

# Extract optimized weights
w_opt <- svm_model$par

# Prepare test data (Add bias term)
X_test <- as.matrix(cbind(1, test_data[, 1:4]))  

# Compute predictions using decision boundary
pred_scores <- X_test %*% w_opt  # Matrix multiplication now works correctly
pred_labels <- ifelse(pred_scores > 0, 1, -1)  # Convert to class labels

# Compute accuracy
accuracy <- mean(pred_labels == test_data$Species)
print(paste("Manual SVM Accuracy:", round(accuracy, 2)))

# Plot predictions
plot(pred_scores, col = ifelse(pred_labels == 1, "blue", "red"), 
     main = "Manual SVM Predictions", xlab = "Sample Index", ylab = "Prediction Score")
abline(h = 0, col = "black", lwd = 2)  # Decision boundary
