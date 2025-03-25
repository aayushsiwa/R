# 2. Visualizations with a built-in dataset (`mtcars`)


data("mtcars")

par(mfrow=c(2,2))

# Line Chart
plot(mtcars$mpg, type = "l", col = "blue", 
     xlab = "Index", ylab = "Miles Per Gallon (mpg)", 
     main = "Line Chart of mpg in mtcars")

# Bar Plot
barplot(mtcars$cyl, col = "green", 
        main = "Bar Plot of Cylinders", 
        xlab = "Index", ylab = "Number of Cylinders")

# Histogram
hist(mtcars$hp, col = "purple", 
     main = "Histogram of Horsepower (hp)", 
     xlab = "Horsepower", 
     ylab = "Frequency")

# Pie Chart
cyl_counts <- table(mtcars$cyl)
pie(cyl_counts, labels = names(cyl_counts), 
main = "Pie Chart of Cylinders", 
    col = rainbow(length(cyl_counts)))

par(mfrow=c(2,2))

# Scatter Plot
plot(mtcars$mpg,mtcars$hp, col="darkorange",xlab="MPG",ylab="HP",main="Scatter")


# Kernel Density Plot
plot(density(mtcars$mpg),col="darkblue",lwd=2,main="Kernel",xlab="mpg")

# Box Plot
boxplot(mpg~cyl, data=mtcars,col=c("red","green","blue"),
xlab="No. of cyl",ylab="MPG",
main="Box Plot")

# Dot Plots
dotchart(mtcars$wt, main="Dot Plot of Car Weights",
xlab="Weight (1000lbs)", col="darkgreen")

par(mforw=c(1,1))