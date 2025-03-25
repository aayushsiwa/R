# 19. Find out the factorial of a number using function
factorial <- function(n) {
  if (n == 0) return(1)
  return(n * factorial(n - 1))
}