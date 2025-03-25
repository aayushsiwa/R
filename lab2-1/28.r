# Generate a set of numbers
numbers <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

# Calculate and display statistics
cat("Mean:", mean(numbers), "\n")
cat("Median:", median(numbers), "\n")
cat("Variance:", var(numbers), "\n")
cat("Standard Deviation:", sd(numbers), "\n")
cat("Standard Scores (z-scores):", scale(numbers), "\n")
cat("Summary:\n")
print(summary(numbers))
cat("Max:", max(numbers), "\n")
cat("Min:", min(numbers), "\n")
cat("Ranks:", rank(numbers), "\n")
cat("Quantiles:\n")
print(quantile(numbers))