is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}

# Example usage:
n <- as.integer(readline(prompt="Enter a number: "))
if (is_prime(n)) {
  print(paste(n, "is a prime number"))
} else {
  print(paste(n, "is not a prime number"))
}
