# Data: Before and After Dispute
before_dispute <- c(850, 820, 600, 30, 750, 920, 760)
after_dispute <- c(900, 800, 550, 110, 750, 950, 600)
names <- c("Mean Wages", "Median Wages", "Number Employed", "Standard Deviation", "Lower Quartile", "Upper Quartile", "Modal Wages")

data <- data.frame(Statistic = names, Before = before_dispute, After = after_dispute)

# Function to Calculate Mode
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Display Statistics
print("Firm Statistics Before and After Dispute")
print(data)

# Analyzing Skewness
skewness_before <- (data$Before[1] - data$Before[2]) / data$Before[4]
skewness_after <- (data$After[1] - data$After[2]) / data$After[4]

print(paste("Skewness Before Dispute:", round(skewness_before, 2)))
print(paste("Skewness After Dispute:", round(skewness_after, 2)))

if (skewness_after > 0) {
  print("After dispute: Positively skewed (few high earners pulling mean up)")
} else if (skewness_after < 0) {
  print("After dispute: Negatively skewed (more low earners pulling mean down)")
} else {
  print("After dispute: Symmetric distribution")
}

