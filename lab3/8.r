insert_string <- function(input_string, search_string, new_string) {
  pos <- regexpr(search_string, input_string)
  if (pos == -1) {
    stop("Sub-string not found")
  }
  modified_string <- paste0(substr(input_string, 1, pos - 1), new_string, substr(input_string, pos, nchar(input_string)))
  return(modified_string)
}

# Example usage
input_string <- "Hello World"
cat("Modified string:", insert_string(input_string, "World", "Beautiful "), "\n")