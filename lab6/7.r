data <- c(0, 3, 4, 1, 2, 3, 0, 2, 1, 3, 2, 0, 2, 2, 3, 2, 5, 2, 3, 999)

library(e1071)
kurtosis_value <- kurtosis(data)

print(kurtosis_value)