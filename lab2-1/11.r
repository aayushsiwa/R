fibonacci <- function(n) {
  fib <- numeric(n)
  fib[1] <- 0
  if (n > 1) fib[2] <- 1
  for (i in 3:n) {
    fib[i] <- fib[i-1] + fib[i-2]
  }
  return(fib)
}

# Example usage:
n <- as.integer(readline(prompt="Enter the number of terms: "))
print(fibonacci(n))
