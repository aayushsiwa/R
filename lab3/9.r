replace_multiple_blanks <- function(input_string) {
  modified_string <- gsub("\\s{2,}", " ", input_string)
  return(modified_string)
}

# Example usage
input_string <- "Grim  return   to the  planet  of apes!!"
cat("Modified string:", replace_multiple_blanks(input_string), "\n")