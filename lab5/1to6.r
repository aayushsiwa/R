student_data <- data.frame(
  rollno = 1:10,
  name = c("John", "Alice", "Bob", "Carol", "David", "Eve", "Frank", "Grace", "Helen", "Ian"),
  branch = c("CSE", "IT", "ECE", "CSE", "ME", "IT", "CSE", "ECE", "CSE", "IT"),
  percentage = c(85, 78, 90, 92, 88, 76, 84, 85, 80, 89),
  DOA = as.Date(c("2021-05-15", "2021-04-20", "2020-07-19", "2021-05-02", "2019-09-10", 
                  "2021-03-25", "2021-06-11", "2021-08-14", "2021-11-01", "2021-10-10"))
)

# Write to a CSV file
write.csv(student_data, "Student.csv", row.names = FALSE)

# Read the CSV file into R
student_csv <- read.csv("Student.csv")
print(student_csv)

cat("\n2.\n")

max_percentage_student <- student_csv[which.max(student_csv$percentage), ]
print(max_percentage_student)

cat("\n3.\n")
it_cse_students <- subset(student_csv, branch %in% c("IT", "CSE"))
print(it_cse_students)

cat("\n4.\n")
cse_high_percentage <- subset(student_csv, branch == "CSE" & percentage >= 80)
print(cse_high_percentage)

cat("\n5.\n")
students_after_date <- subset(student_csv, DOA >= as.Date("2021-05-01"))
print(students_after_date)



cat("\n6.\n")
# Write a TSV file
write.table(student_data[, c("rollno", "name", "branch", "percentage")], "Student.tsv", sep = "\t", row.names = FALSE)

# Read the TSV file
student_tsv <- read.table("Student.tsv", sep = "\t", header = TRUE)

# Find duplicate percentages
duplicate_percentages <- student_tsv[duplicated(student_tsv$percentage) | duplicated(student_tsv$percentage, fromLast = TRUE), ]
print(cbind(duplicate_percentages["name"], duplicate_percentages["percentage"]))
# print(duplicate_percentages["percentage"])

