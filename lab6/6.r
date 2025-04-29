marks <- c(55, 75, 65, 30, 90, 55, 40, 50, 60, 80, 80, 76, 95, 75, 55, 45, 
           65, 80, 30, 50, 75, 85, 80, 90, 75, 75, 90, 65, 78, 72, 82, 52, 
           62, 67, 66, 58)

mean_marks <- mean(marks)
median_marks <- median(marks)
mode_marks <- as.numeric(names(sort(-table(marks)))[1])

sd_marks <- sd(marks)
variance_marks <- var(marks)
range_marks <- range(marks)

quartiles <- quantile(marks)
summary_marks <- summary(marks)

# list(mean = mean_marks, median = median_marks, mode = mode_marks,
#      sd = sd_marks, variance = variance_marks, range = range_marks,
#      quartiles = quartiles, summary = summary_marks)

cat("\nmean =", mean_marks, "\nmedian =", median_marks, "\nmode =", mode_marks,
     "\nsd =", sd_marks, "\nvariance =", variance_marks, "\nrange =", range_marks,
     "\nquartiles =", quartiles, "\nsummary =", summary_marks)