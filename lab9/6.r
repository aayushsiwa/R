# Load dataset (assuming CSV format)
data <- read.csv("../data/Concrete_Data.csv")  

# Split dataset (80% training, 20% testing)
set.seed(42)
train_index <- sample(1:nrow(data), 0.8 * nrow(data))
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# Apply polynomial transformation to capture non-linearity
train_data$Cement2 <- train_data$Cement^2
train_data$Water2 <- train_data$Water^2
train_data$Age2 <- train_data$Age^2

test_data$Cement2 <- test_data$Cement^2
test_data$Water2 <- test_data$Water^2
test_data$Age2 <- test_data$Age^2

# Train non-linear regression model
model <- lm(Strength ~ Cement + Water + Age + Cement2 + Water2 + Age2, data = train_data)

# Make predictions
pred_strength <- predict(model, test_data)

# Compute Mean Squared Error (MSE)
mse <- mean((pred_strength - test_data$Strength)^2)
print(paste("Mean Squared Error:", round(mse, 2)))

# Plot Actual vs Predicted
plot(test_data$Strength, pred_strength, col = "blue", 
     main = "Actual vs Predicted Strength", 
     xlab = "Actual Strength (MPa)", 
     ylab = "Predicted Strength (MPa)")
abline(0, 1, col = "red", lwd = 2)  # Ideal line

