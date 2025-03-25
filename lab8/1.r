# Load dataset
hr_data <- read.csv("../data/HR_data.csv")

# Open a PDF file to save plots
pdf("1.pdf")

# Attrition by Performance Rating
barplot(table(hr_data$PerformanceRating, hr_data$Attrition), beside=TRUE, col=c("blue", "red"),
        legend = c("Stayed", "Left"), main="Employee Attrition by Performance Rating",
        xlab="Performance Rating", ylab="Count")

# Attrition by Job Satisfaction
barplot(table(hr_data$JobSatisfaction, hr_data$Attrition), beside=TRUE, col=c("green", "orange"),
        legend = c("Stayed", "Left"), main="Employee Attrition by Job Satisfaction",
        xlab="Job Satisfaction Level", ylab="Count")

# Close the PDF file
dev.off()

print("Plots saved to HR_Attrition_Analysis.pdf")
