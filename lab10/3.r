# Load dataset
data <- read.csv("../data/WineQT.csv")

# Drop 'Id' column if it's just an index
data <- data[, !(names(data) %in% c("Id"))]

# Handle missing values
data <- na.omit(data)

# Scale the data (excluding 'quality' column)
data_scaled <- scale(data[, -ncol(data)])

# Set random seed for reproducibility
set.seed(42)

# Perform K-Means Clustering with k = 3
kmeans_model <- kmeans(data_scaled, centers = 3, nstart = 25)

# Add cluster labels to dataset
data$Cluster <- kmeans_model$cluster

# Print cluster centers
print(kmeans_model$centers)

# Basic plot using base R (First two features)
plot(data[, 1], data[, 2], col = data$Cluster, pch = 19,
     xlab = names(data)[1], ylab = names(data)[2],
     main = "K-Means Clustering on Wine Quality Dataset")

# Add cluster centers
points(kmeans_model$centers[, 1:2], col = 1:3, pch = 8, cex = 2)
