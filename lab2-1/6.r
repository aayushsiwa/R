marks1 <- as.numeric(readline(prompt="Enter marks for subject 1: "))
marks2 <- as.numeric(readline(prompt="Enter marks for subject 2: "))
marks3 <- as.numeric(readline(prompt="Enter marks for subject 3: "))

total_marks <- marks1 + marks2 + marks3
average_marks <- total_marks / 3

if (average_marks >= 90) {
  grade <- "A"
} else if (average_marks >= 80) {
  grade <- "B"
} else if (average_marks >= 70) {
  grade <- "C"
} else if (average_marks >= 60) {
  grade <- "D"
} else {
  grade <- "F"
}

print(paste("Total Marks:", total_marks))
print(paste("Average Marks:", average_marks))
print(paste("Grade:", grade))
