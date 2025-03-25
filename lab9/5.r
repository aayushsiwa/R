# Load dataset
data(iris)

# Split dataset (80% training, 20% testing)
set.seed(42)
train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Function to compute Gaussian probability density
gaussian_prob <- function(x, mean, sd) {
  return((1 / (sqrt(2 * pi) * sd)) * exp(-((x - mean)^2) / (2 * sd^2)))
}

# Train Naïve Bayes manually
nb_train <- function(data) {
  priors <- table(data$Species) / nrow(data)  # Prior probabilities
  means <- aggregate(. ~ Species, data = data, FUN = mean)  # Mean per class
  sds <- aggregate(. ~ Species, data = data, FUN = sd)  # Std dev per class
  return(list(priors = priors, means = means, sds = sds))
}

# Predict function
nb_predict <- function(model, new_data) {
  priors <- model$priors
  means <- model$means
  sds <- model$sds
  species <- levels(new_data$Species)
  
  predictions <- c()
  for (i in 1:nrow(new_data)) {
    probs <- c()
    for (s in species) {
      prob <- priors[s]  # Start with prior
      for (feature in names(new_data)[-5]) {  # Exclude Species column
        prob <- prob * gaussian_prob(new_data[i, feature], means[means$Species == s, feature], sds[sds$Species == s, feature])
      }
      probs[s] <- prob
    }
    predictions <- c(predictions, names(which.max(probs)))
  }
  return(factor(predictions, levels = species))
}

# Train model
nb_model <- nb_train(train_data)

# Make predictions
pred_labels <- nb_predict(nb_model, test_data)

# Compute accuracy
accuracy <- mean(pred_labels == test_data$Species)
print(paste("Manual Naïve Bayes Accuracy:", round(accuracy, 2)))
