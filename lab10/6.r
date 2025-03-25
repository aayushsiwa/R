# Load dataset
data <- read.csv("../data/WineQT.csv")

# Drop 'Id' column if it exists
data <- data[, !(names(data) %in% c("Id"))]

# Handle missing values
data <- na.omit(data)

# Convert quality to a categorical variable (LDA requires a factor response)
data$quality <- as.factor(data$quality)

# Perform LDA
lda_model <- MASS::lda(quality ~ ., data = data)

# Print model summary
print(lda_model)

# Predict LDA components
lda_values <- predict(lda_model)

# Plot the first two LDA components
plot(lda_values$x[, 1], lda_values$x[, 2], col = as.integer(data$quality), pch = 19,
     xlab = "LDA Component 1", ylab = "LDA Component 2",
     main = "LDA on Wine Quality Dataset")
legend("topright", legend = levels(data$quality), col = 1:length(levels(data$quality)), pch = 19)
