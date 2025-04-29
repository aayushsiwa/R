# 26. Find Sum of Series 1²+2²+3²+.....+n² using recursive function
sum_of_squares <- function(n) {
  if (n == 1) return(1)
  return(n^2 + sum_of_squares(n - 1))
}
