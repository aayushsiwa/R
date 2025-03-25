# Load dataset
retail_data <- read.csv("../data/retail_sales_dataset.csv")  # Ensure correct file name

# View column names to verify structure
names(retail_data)

# Summary statistics
summary(retail_data)

# Total sales per product category
sales_by_category <- tapply(retail_data$Total.Amount, retail_data$Product.Category, sum)
print(sales_by_category)

# Customer gender distribution
table(retail_data$Gender)

# Average spending per age group
age_groups <- cut(retail_data$Age, breaks=c(0, 18, 30, 50, 100), labels=c("0-18", "19-30", "31-50", "51+"))
avg_spending_by_age <- tapply(retail_data$Total.Amount, age_groups, mean)
print(avg_spending_by_age)

# Basic bar plot: Sales by Product Category
barplot(sales_by_category, col="blue", main="Total Sales by Product Category",
        xlab="Product Category", ylab="Total Sales", las=2)

# Sales distribution by gender
barplot(table(retail_data$Gender), col=c("pink", "lightblue"), 
        main="Sales Distribution by Gender", xlab="Gender", ylab="Number of Transactions")

# Correlation between Quantity and Total Amount
cor(retail_data$Quantity, retail_data$Total.Amount)
