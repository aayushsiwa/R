number <- as.numeric(readline(prompt="Enter a 3-digit number: "))
reverse_number <- as.numeric(paste(rev(strsplit(as.character(number), NULL)[[1]]), collapse=""))
if (number == reverse_number) {
  print("The number is a palindrome")
} else {
  print("The number is not a palindrome")
}
