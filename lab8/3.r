# Load dataset
manufacturing_data <- read.csv("../data/ai4i2020.csv")

pdf("3.pdf")

# Summary statistics
summary(manufacturing_data)

# Countfailures  by type
table(manufacturing_data$failure)

# Mean tool wear for each failure type
tapply(manufacturing_data$toolWear, manufacturing_data$failure, mean)

# Basic histogram for air temperature vs. failures
hist(manufacturing_data$airTemp
, main="Air Temperature Distribution",
     xlab="Temperature", col="lightblue", breaks=10)

dev.off()