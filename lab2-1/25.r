# 25. Find the factorial of a number using recursive function
factorial_recursive <- function(n) {
  if (n == 0) return(1)
  return(n * factorial_recursive(n - 1))
}