count_vowels <- function(input_string) {
  vowels <- c('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
  count <- sum(strsplit(input_string, NULL)[[1]] %in% vowels)
  return(count)
}

# Example usage
input_string <- "Hello World"
cat("Number of vowels:", count_vowels(input_string), "\n")