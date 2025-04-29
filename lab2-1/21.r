# 21. Evaluate sum of the series 1+2+3+...+N using recursive function
sum_series <- function(n) {
  if (n == 1) return(1)
  return(n + sum_series(n - 1))
}