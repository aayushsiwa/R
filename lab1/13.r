# Enter the amount to be withdrawn in hundreds
amount <- as.numeric(readline(prompt="Enter amount to be withdrawn (in hundreds): ")) * 100

# Calculate the number of notes of each denomination
notes_100 <- amount %/% 100
remaining_amount <- amount %% 100
notes_50 <- remaining_amount %/% 50
remaining_amount <- remaining_amount %% 50
notes_10 <- remaining_amount %/% 10

cat("Number of 100 notes: ", notes_100, "\n")
cat("Number of 50 notes: ", notes_50, "\n")
cat("Number of 10 notes: ", notes_10, "\n")
