check_and_convert_to_factor <- function(vec) {
  if (!is.factor(vec)) {
    vec <- as.factor(vec)
  }
  print(vec)
  print(levels(vec))
}

# Example usage
vec <- c("apple", "banana", "apple", "orange")
check_and_convert_to_factor(vec)