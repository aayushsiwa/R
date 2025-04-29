# 27. Develop a function that receives 5 numbers and display the sum, average and standard deviation of these numbers
stats_of_five <- function(a, b, c, d, e) {
  numbers <- c(a, b, c, d, e)
  sum_numbers <- sum(numbers)
  avg_numbers <- mean(numbers)
  sd_numbers <- sd(numbers)
  return(list(sum = sum_numbers, average = avg_numbers, sd = sd_numbers))
}