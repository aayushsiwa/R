# Enter radius
radius <- as.numeric(readline(prompt = "Enter the radius of the circle: "))

# Calculate area and circumference
area <- pi * radius^2
circumference <- 2 * pi * radius

# Display results
cat("Area of the circle:", area, "\n")
cat("Circumference of the circle:", circumference, "\n")