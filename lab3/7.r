replace_substring <- function(input_string, start_pos) {
  if (nchar(input_string) < start_pos + 4) {
    stop("String is too short for the given start position")
  }
  new_string <- paste0(substr(input_string, 1, start_pos - 1), "V-Day", substr(input_string, start_pos + 5, nchar(input_string)))
  return(new_string)
}

# Example usage
input_string <- "Hello World"
cat("Modified string:", replace_substring(input_string, 1), "\n")