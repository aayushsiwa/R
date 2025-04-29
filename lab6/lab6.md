Below is the R code to solve the specified questions step by step. Each question's solution is contained within a separate section.
1. Frequency Distribution Table

# Blood types
blood_types <- c("A", "O", "A", "B", "B", "AB", "B", "B", "O", "A", 
                 "O", "O", "O", "AB", "B", "AB", "AB", "A", "O", "A")

# Frequency table
freq_table <- table(blood_types)
total <- sum(freq_table)

# Calculating proportions, percentages, and cumulative frequency
proportions <- freq_table / total
percentages <- proportions * 100
cumulative_freq <- cumsum(freq_table)

# Combining into a data frame
freq_distribution <- data.frame(
  Blood_Type = names(freq_table),
  Frequency = as.integer(freq_table),
  Proportion = proportions,
  Percentage = percentages,
  Cumulative_Frequency = cumulative_freq
)

print(freq_distribution)

2. Coefficient of Skewness

# Frequency distribution
class_intervals <- c("0-10", "10-20", "20-30", "30-40", "40-50", "50-60", "60-70", "70-80")
frequencies <- c(6, 12, 22, 48, 56, 32, 18, 6)
midpoints <- c(5, 15, 25, 35, 45, 55, 65, 75)

# Calculating mean
total_freq <- sum(frequencies)
mean <- sum(midpoints * frequencies) / total_freq

# Calculating median
cumulative_freq <- cumsum(frequencies)
median_class_index <- which(cumulative_freq >= total_freq / 2)[1]
median_class <- midpoints[median_class_index]
median <- median_class  # Approximate as the class midpoint

# Calculating skewness
skewness <- (mean - median) / sd(midpoints)
print(skewness)

3 & 4. Comment on Distribution

# Data sets
data1 <- c(14, 14, 14, 14, 14)
data2 <- c(11, 12, 14, 16, 17)
data3 <- c(1, 3, 6, 8, 42)

# Function to comment on skewness
comment_on_distribution <- function(data) {
  skewness <- mean(data) - median(data)
  if (skewness > 0) {
    return("Positively skewed")
  } else if (skewness < 0) {
    return("Negatively skewed")
  } else {
    return("Symmetrical distribution")
  }
}

comment_on_distribution(data1)
comment_on_distribution(data2)
comment_on_distribution(data3)

5. Firm Analysis

# Data
before <- list(mean = 850, median = 820, n = 600, sd = 30, q1 = 750, q3 = 920, mode = 760)
after <- list(mean = 900, median = 800, n = 550, sd = 110, q1 = 750, q3 = 950, mode = 600)

# Comparing distributions
skewness_before <- (before$mean - before$median) / before$sd
skewness_after <- (after$mean - after$median) / after$sd

print(c(skewness_before, skewness_after))

6. Skewness Analysis

# Data sets
freq1 <- c(27, 20, 12, 6, 3)
freq2 <- c(3, 6, 12, 20, 27)

# Function to calculate skewness
skewness <- function(freq) {
  midpoints <- c(11, 13, 15, 17, 19)
  mean <- sum(midpoints * freq) / sum(freq)
  median <- midpoints[which.max(freq)]  # Approximate by mode
  sd <- sqrt(sum(freq * (midpoints - mean)^2) / sum(freq))
  return((mean - median) / sd)
}

skewness(freq1)
skewness(freq2)

7. Examination Marks

# Marks
marks <- c(55, 75, 65, 30, 90, 55, 40, 50, 60, 80, 80, 76, 95, 75, 55, 45, 
           65, 80, 30, 50, 75, 85, 80, 90, 75, 75, 90, 65, 78, 72, 82, 52, 
           62, 67, 66, 58)

# Measures of central tendency
mean_marks <- mean(marks)
median_marks <- median(marks)
mode_marks <- as.numeric(names(sort(-table(marks)))[1])

# Measures of dispersion
sd_marks <- sd(marks)
variance_marks <- var(marks)
range_marks <- range(marks)

# Position measures
quartiles <- quantile(marks)
summary_marks <- summary(marks)

list(mean = mean_marks, median = median_marks, mode = mode_marks,
     sd = sd_marks, variance = variance_marks, range = range_marks,
     quartiles = quartiles, summary = summary_marks)

8. Kurtosis

# Data
data <- c(0, 3, 4, 1, 2, 3, 0, 2, 1, 3, 2, 0, 2, 2, 3, 2, 5, 2, 3, 999)

# Kurtosis calculation
library(e1071)
kurtosis_value <- kurtosis(data)

print(kurtosis_value)

9. Correlation (Gestational Age and Birth Weight)

# Data
gestational_age <- c(34.7, 36, 29.3, 40.1, 35.7, 42.4, 40.3, 37.3, 40.9, 38.3, 38.5, 
                     41.4, 39.7, 39.7, 41.1, 38.0, 38.7)
birth_weight <- c(1895, 2030, 1440, 2835, 3090, 3827, 3260, 2690, 3285, 2920, 3430, 
                  3657, 3685, 3345, 3260, 2680, 2005)

correlation <- cor(gestational_age, birth_weight)
correlation

10. Breath Holding Association

# Data
normal <- c(56, 56, 65, 65, 50, 25, 87, 44, 35)
hypervent <- c(87, 91, 85, 91, 75, 28, 122, 66, 58)

correlation <- cor(normal, hypervent)
correlation

11 & 12. Covariance and Correlation

# Stock returns
stock_a <- c(12, 22.5, 31.9, 42, 52.1)
market <- c(1.3, 5, 0.8, 1.9, 1.1)

covariance <- cov(stock_a, market)
correlation <- cor(stock_a, market)

list(covariance = covariance, correlation = correlation)

Let me know if further explanations are needed for any part.