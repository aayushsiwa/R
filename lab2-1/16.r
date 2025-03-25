is_armstrong <- function(n) {
  digits <- as.numeric(unlist(strsplit(as.character(n), NULL)))
  sum_cubes <- sum(digits^3)
  return(sum_cubes == n)
}

# Example usage:
n <- as.integer(readline(prompt="Enter a number: "))
if (is_armstrong(n)) {
  print(paste(n, "is an Armstrong number"))
} else {
  print(paste(n, "is not an Armstrong number"))
}
