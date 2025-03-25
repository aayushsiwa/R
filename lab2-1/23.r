# 23. Evaluate the simple interest of the given P, T, R using function, where function takes the default value for R
simple_interest <- function(P, T, R = 5) {
  return((P * T * R) / 100)
}
