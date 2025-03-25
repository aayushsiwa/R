print_pattern <- function(n) {
  for (i in 1:n) {
    if (i %% 2 == 0) {
      cat(rev(1:i), "\n")
    } else {
      cat(1:i, "\n")
    }
  }
}

# Example usage:
n <- as.integer(readline(prompt="Enter the number of rows: "))
print_pattern(n)
