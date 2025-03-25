# Load dataset
data <- read.csv("../data/Admission_Predict.csv")

# Remove Serial No. as it's not needed
data <- data[,-1]

# Convert 'Chance of Admit' into a binary classification (1 = High chance, 0 = Low chance)
data$Admit <- ifelse(data$Chance.of.Admit >= 0.7, 1, 0)

# Remove original 'Chance of Admit' column
data$Chance.of.Admit <- NULL

# Split dataset into training and testing (80-20 split)
set.seed(42)
train_index <- sample(1:nrow(data), 0.8 * nrow(data))
train_data <- data[train_index, ]
test_data  <- data[-train_index, ]

# Train Logistic Regression model
model <- glm(Admit ~ ., data = train_data, family = binomial)

# Predict on test data
pred_probs <- predict(model, test_data, type = "response")

# Convert probabilities to binary labels
pred_labels <- ifelse(pred_probs > 0.5, 1, 0)

# Compute accuracy
accuracy <- mean(pred_labels == test_data$Admit)
print(paste("Accuracy:", round(accuracy, 2)))

# Plot predicted vs. actual values
plot(test_data$Admit, pred_labels, 
     xlab = "Actual Admission (0 = No, 1 = Yes)", 
     ylab = "Predicted Admission (0 = No, 1 = Yes)", 
     main = "Logistic Regression Predictions",
     col = "blue", pch = 16)
abline(0, 1, col = "red", lwd = 2)  # Add diagonal line for reference
