# Load dataset

# Open a PDF file to save plots
pdf("2.pdf")
# Load dataset
health_data <- read.csv("../data/hospital_readmissions.csv")  # Ensure correct file name

# View column names to verify structure
names(health_data)

# Summary statistics
summary(health_data)

# Count readmission cases
table(health_data$readmitted)

# Readmission vs. Time in Hospital
table(health_data$time_in_hospital, health_data$readmitted)

# Readmission vs. Number of Medications
table(health_data$n_medications, health_data$readmitted)

# Basic bar plot: Readmissions by Time in Hospital
barplot(table(health_data$time_in_hospital, health_data$readmitted), beside=TRUE, col=c("blue", "red"),
        legend = c("Not Readmitted", "Readmitted"), main="Patient Readmissions by Hospital Stay",
        xlab="Days in Hospital", ylab="Count")

# Readmissions by Number of Medications
barplot(table(health_data$n_medications, health_data$readmitted), beside=TRUE, col=c("green", "orange"),
        legend = c("Not Readmitted", "Readmitted"), main="Patient Readmissions by Medication Count",
        xlab="Number of Medications", ylab="Count")

# Correlation between Time in Hospital and Readmission
cor(health_data$time_in_hospital, as.numeric(health_data$readmitted))

# Correlation between Number of Lab Procedures and Readmission
cor(health_data$n_lab_procedures, as.numeric(health_data$readmitted))

# Close the PDF file
dev.off()

print("Plots saved to HR_Attrition_Analysis.pdf")
