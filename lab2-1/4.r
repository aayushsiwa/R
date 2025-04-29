# Enter two numbers
num1 <- as.numeric(readline(prompt = "Enter the first number: "))
num2 <- as.numeric(readline(prompt = "Enter the second number: "))

# Find out the biggest number
if (num1 > num2) {
  cat("The biggest number is:", num1, "\n")
} else if (num2 > num1) {
  cat("The biggest number is:", num2, "\n")
} else {
  cat("Both numbers are equal.\n")
}