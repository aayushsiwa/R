# Enter numbers
a <- as.numeric(readline(prompt = "Enter first number: "))
b <- as.numeric(readline(prompt = "Enter second number: "))

# Swap numbers
a <- a + b
b <- a - b
a <- a - b

# Display results
cat("After swapping:\n")
cat("First number:", a, "\n")
cat("Second number:", b, "\n")