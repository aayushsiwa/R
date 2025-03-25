reverse_number <- function(n) {
  reversed <- as.integer(paste(rev(strsplit(as.character(n), NULL)[[1]]), collapse=""))
  return(reversed)
}

# Example usage:
n <- as.integer(readline(prompt="Enter a number: "))
print(reverse_number(n))
