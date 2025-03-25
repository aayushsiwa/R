# Enter the amount in seconds
seconds <- as.numeric(readline(prompt="Enter amount in seconds: "))

# Convert seconds to hours, minutes, and remaining seconds
hours <- seconds %/% 3600
remaining_seconds <- seconds %% 3600
minutes <- remaining_seconds %/% 60
remaining_seconds <- remaining_seconds %% 60

cat(seconds, "seconds = ", hours, "Hour,", minutes, "Minute and", remaining_seconds, "Second\n")
