# Load dataset
data <- read.csv("../data/diabetes.csv")

# Remove 'Outcome' (target variable) since PCA is unsupervised
data_pca <- data[, !(names(data) %in% c("Outcome"))]

# Handle missing values (remove rows with NAs)
data_pca <- na.omit(data_pca)

# Scale the data for PCA (important for variance-based methods)
data_scaled <- scale(data_pca)

# Perform PCA
pca_model <- prcomp(data_scaled)

# Print summary of PCA (variance explained by each component)
print(summary(pca_model))

# Plot the first two principal components
plot(pca_model$x[, 1], pca_model$x[, 2], col = "blue", pch = 19,
     xlab = "Principal Component 1", ylab = "Principal Component 2",
     main = "PCA on Diabetes Dataset")
