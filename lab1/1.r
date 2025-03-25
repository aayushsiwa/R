# Initialize variables
a <- 10
b <- "Hello"
c <- TRUE

# Display variables
print(ls())

# Delete a single variable
rm(a)
print(ls())

# Delete all variables
rm(list = ls())
print(ls())