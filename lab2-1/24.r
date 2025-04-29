# 24. Convert decimal into binary using recursive function
decimal_to_binary <- function(n) {
  if (n == 0) return(0)
  return(n %% 2 + 10 * decimal_to_binary(n %/% 2))
}