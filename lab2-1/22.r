# 22. Display the reverse of the given number using recursive function
reverse_number <- function(n, rev = 0) {
  if (n == 0) return(rev)
  return(reverse_number(n %/% 10, rev * 10 + n %% 10))
}