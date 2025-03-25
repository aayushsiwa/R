# Enter principal, time, and rate
P <- as.numeric(readline(prompt = "Enter the principal amount: "))
T <- as.numeric(readline(prompt = "Enter the time period in years: "))
R <- as.numeric(readline(prompt = "Enter the rate of interest: "))

# Calculate compound interest
CI <- P * (1 + R/100)^T - P

# Display result
cat("Compound Interest:", CI, "\n")