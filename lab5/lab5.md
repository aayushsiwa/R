Here is how you can implement each step in R:

### Step 1: Create a CSV File and Read It
```R
# Create a data frame
student_data <- data.frame(
  rollno = 1:10,
  name = c("John", "Alice", "Bob", "Carol", "David", "Eve", "Frank", "Grace", "Helen", "Ian"),
  branch = c("CSE", "IT", "ECE", "CSE", "ME", "IT", "CSE", "ECE", "CSE", "IT"),
  percentage = c(85, 78, 90, 92, 88, 76, 84, 95, 80, 89),
  DOA = as.Date(c("2021-05-15", "2021-04-20", "2020-07-19", "2021-05-02", "2019-09-10", 
                  "2021-03-25", "2021-06-11", "2021-08-14", "2021-11-01", "2021-10-10"))
)

# Write to a CSV file
write.csv(student_data, "Student.csv", row.names = FALSE)

# Read the CSV file into R
student_csv <- read.csv("Student.csv")
print(student_csv)
```

### Step 2: Retrieve Student with Maximum Percentage
```R
max_percentage_student <- student_csv[which.max(student_csv$percentage), ]
print(max_percentage_student)
```

### Step 3: Retrieve Students in IT or CSE Branch
```R
it_cse_students <- subset(student_csv, branch %in% c("IT", "CSE"))
print(it_cse_students)
```

### Step 4: Retrieve CSE Students with Percentage >= 80
```R
cse_high_percentage <- subset(student_csv, branch == "CSE" & percentage >= 80)
print(cse_high_percentage)
```

### Step 5: Retrieve Students Admitted on or After 1st May 2021
```R
students_after_date <- subset(student_csv, DOA >= as.Date("2021-05-01"))
print(students_after_date)
```

### Step 6: Create a TSV File and Display Duplicate Percentages
```R
# Write a TSV file
write.table(student_data[, c("rollno", "name", "branch", "percentage")], "Student.tsv", sep = "\t", row.names = FALSE)

# Read the TSV file
student_tsv <- read.table("Student.tsv", sep = "\t", header = TRUE)

# Find duplicate percentages
duplicate_percentages <- student_tsv[duplicated(student_tsv$percentage) | duplicated(student_tsv$percentage, fromLast = TRUE), ]
print(duplicate_percentages)
```

### Step 7: Use an In-Built Dataset for Explorations
```R
# Load an in-built dataset (e.g., mtcars)
data(mtcars)

# Have a look at the data
print(head(mtcars))

# Explore individual variables
summary(mtcars$mpg)

# Explore multiple variables
cor(mtcars$mpg, mtcars$hp)

# More explorations: Find cars with mpg > 25
high_mpg_cars <- subset(mtcars, mpg > 25)
print(high_mpg_cars)

# Catching errors (fail-fast approach)
if (!exists("mtcars")) stop("Dataset not loaded correctly")
if (any(is.na(mtcars))) stop("Missing values detected")
```

This script covers all the tasks. Ensure the CSV/TSV files are in the working directory when reading them.
