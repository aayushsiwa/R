number <- as.numeric(readline(prompt="Enter a number: "))
factorial <- 1
for (i in 1:number) {
  factorial <- factorial * i
}
print(paste("Factorial of", number, "is", factorial))
