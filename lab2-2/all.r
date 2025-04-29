# 1. Initialize 5 elements to a vector and find the square root of each element
vec <- c(4, 9, 16, 25, 36)
sqrt_vec <- sqrt(vec)
print(sqrt_vec)

# 2. Initialize two vectors and check if they are equal
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, 3, 4, 5)
are_equal <- all(vec1 == vec2)
cat("Vectors are equal:", are_equal, "\n")

# 3. Initialize two vectors with 1s and 0s and perform AND operation
vec1 <- c(1, 0, 1, 0, 1)
vec2 <- c(0, 1, 1, 0, 0)
and_result <- vec1 & vec2
print(and_result)

# 4. Enter elements of a vector from the keyboard and sort them in ascending order
vec <- as.numeric(unlist(strsplit(readline(prompt = "Enter elements separated by space: "), " ")))
sorted_vec <- sort(vec)
print(sorted_vec)

# 5. Initialize two vectors and evaluate the 1st vector raised to the power of the 2nd vector
vec1 <- c(2, 3, 4)
vec2 <- c(3, 2, 1)
power_result <- vec1 ^ vec2
print(power_result)

# 6. Initialize a vector and find the minimum value, maximum value, and sum of all elements
vec <- c(10, 20, 30, 40, 50)
min_val <- min(vec)
max_val <- max(vec)
sum_val <- sum(vec)
cat("Minimum value:", min_val, "\n")
cat("Maximum value:", max_val, "\n")
cat("Sum of elements:", sum_val, "\n")

# 7. Initialize a vector and search for a specific element
vec <- c(10, 20, 30, 40, 50)
element <- as.numeric(readline(prompt = "Enter element to search: "))
is_present <- element %in% vec
cat("Element is present:", is_present, "\n")

# 8. Create a list with different types of data and display each data set separately
my_list <- list(
  numbers = c(1, 2, 3),
  characters = c("a", "b", "c"),
  logicals = c(TRUE, FALSE, TRUE)
)
print(my_list$numbers)
print(my_list$characters)
print(my_list$logicals)

# 9. Create a list with a vector, matrix, and another list, and display only the 2nd data set
my_list <- list(
  vector = c(1, 2, 3),
  matrix = matrix(1:9, nrow = 3),
  sublist = list(a = 1, b = 2)
)
print(my_list$matrix)

# 10. Add a new data set to the previous list and remove the 2nd data set
my_list$new_data <- c("x", "y", "z")
my_list$matrix <- NULL
print(my_list)

# 11. Create two lists and merge them
list1 <- list(1:5)
list2 <- list(months = c("January", "February", "March", "April", "May"))
merged_list <- c(list1, list2)
print(merged_list)

# 12. Create a 4x3 matrix and display specific rows and columns
matrix_4x3 <- matrix(1:12, nrow = 4, ncol = 3)
cat("Row 1:", matrix_4x3[1, ], "\n")
cat("Row 3:", matrix_4x3[3, ], "\n")
cat("Column 2:", matrix_4x3[, 2], "\n")

# 13. Create two matrices and perform arithmetic operations
matrix1 <- matrix(1:9, nrow = 3)
matrix2 <- matrix(9:1, nrow = 3)
sum_matrix <- matrix1 + matrix2
diff_matrix <- matrix1 - matrix2
prod_matrix <- matrix1 * matrix2
quot_matrix <- matrix1 / matrix2
cat("Sum:\n")
print(sum_matrix)
cat("Difference:\n")
print(diff_matrix)
cat("Product:\n")
print(prod_matrix)
cat("Quotient:\n")
print(quot_matrix)

# 14. Create a 3x3 matrix and update it by adding 4 to each element
matrix_3x3 <- matrix(1:9, nrow = 3)
updated_matrix <- matrix_3x3 + 4
print(updated_matrix)

# 15. Set elements of a matrix to 0 if they are less than 5
matrix_3x3 <- matrix(1:9, nrow = 3)
matrix_3x3[matrix_3x3 < 5] <- 0
print(matrix_3x3)

# 16. Check if a given matrix is symmetric
matrix_3x3 <- matrix(c(1, 2, 3, 2, 4, 5, 3, 5, 6), nrow = 3)
is_symmetric <- all(matrix_3x3 == t(matrix_3x3))
cat("Matrix is symmetric:", is_symmetric, "\n")

# 17. Create a matrix and evaluate the sum of elements row-wise
matrix_3x3 <- matrix(1:9, nrow = 3)
row_sums <- rowSums(matrix_3x3)
print(row_sums)

# 18. Create a 3D array and retrieve elements of the 2nd row of the 3rd matrix
array_3d <- array(1:27, dim = c(3, 3, 3))
elements <- array_3d[2, , 3]
print(elements)

# 19. Create a 3D array and calculate the sum of rows across all matrices
array_3d <- array(1:27, dim = c(3, 3, 3))
row_sums <- apply(array_3d, c(1, 2), sum)
print(row_sums)

# 20. Create a sequence of the first 20 triangular numbers and select those with vowel names
triangular_numbers <- sapply(1:20, function(n) n * (n + 1) / 2)
names(triangular_numbers) <- letters[1:20]
vowel_triangular_numbers <- triangular_numbers[names(triangular_numbers) %in% c('a', 'e', 'i', 'o', 'u')]
print(vowel_triangular_numbers)

# 21. Create a 21-by-21 matrix with a specific sequence on the diagonal
seq <- c(11:1, 0, 1:11)
diag_matrix <- diag(seq, 21, 21)
print(diag_matrix)

# 22. Demonstrate Wilkinson matrix
wilkinson_matrix <- function(n) {
  matrix <- matrix(0, n, n)
  for (i in 1:n) {
    for (j in 1:n) {
      matrix[i, j] <- min(i, j) - 1
    }
  }
  return(matrix)
}
wilkinson <- wilkinson_matrix(5)
print(wilkinson)
