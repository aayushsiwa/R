# 20. Find out HCF and LCM of the given two numbers using function
hcf <- function(a, b) {
  if (b == 0) return(a)
  return(hcf(b, a %% b))
}

lcm <- function(a, b) {
  return(abs(a * b) / hcf(a, b))
}
