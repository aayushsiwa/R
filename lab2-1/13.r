is_perfect <- function(n) {
  sum_divisors <- sum(sapply(1:(n-1), function(x) if (n %% x == 0) x else 0))
  return(sum_divisors == n)
}

# Example usage:
n <- as.integer(readline(prompt="Enter a number: "))
if (is_perfect(n)) {
  print(paste(n, "is a perfect number"))
} else {
  print(paste(n, "is not a perfect number"))
}
