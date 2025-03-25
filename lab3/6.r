reverse_string <- function(input_string) {
  reversed <- paste(rev(strsplit(input_string, NULL)[[1]]), collapse = "")
  return(reversed)
}

# Example usage
input_string <- "Hello World"
cat("Reversed string:", reverse_string(input_string), "\n")