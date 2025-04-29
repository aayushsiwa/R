sum_series <- function(n) {
  sum_s <- sum(sapply(1:n, function(x) sum(1:x)))
  return(sum_s)
}

# Example usage:
n <- as.integer(readline(prompt="Enter the value of n: "))
print(sum_series(n))
