cat("Choose an option:\n1. Area of circle\n2. Area of rectangle\n3. Area of triangle\n")
choice <- as.integer(readline(prompt="Enter your choice: "))

switch(choice,
       {
         radius <- as.numeric(readline(prompt="Enter the radius of the circle: "))
         area <- pi * radius^2
         print(paste("Area of the circle is", area))
       },
       {
         length <- as.numeric(readline(prompt="Enter the length of the rectangle: "))
         width <- as.numeric(readline(prompt="Enter the width of the rectangle: "))
         area <- length * width
         print(paste("Area of the rectangle is", area))
       },
       {
         base <- as.numeric(readline(prompt="Enter the base of the triangle: "))
         height <- as.numeric(readline(prompt="Enter the height of the triangle: "))
         area <- 0.5 * base * height
         print(paste("Area of the triangle is", area))
       },
       {
         print("Invalid choice")
       }
)
