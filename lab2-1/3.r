# Enter a number
number <- as.numeric(readline(prompt = "Enter a number: "))

# Check if the number is positive or not
if (number > 0) {
  cat("The number is positive.\n")
} else {
  cat("The number is not positive.\n")
}