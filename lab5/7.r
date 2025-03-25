# Load an in-built dataset (e.g., mtcars)
data(mtcars)

# Have a look at the data
print(head(mtcars))

# Explore individual variables
summary(mtcars$mpg)

# Explore multiple variables
cor(mtcars$mpg, mtcars$hp)

# More explorations: Find cars with mpg > 25
high_mpg_cars <- subset(mtcars, mpg > 25)
print(high_mpg_cars)

# Catching errors (fail-fast approach)
if (!exists("mtcars")) stop("Dataset not loaded correctly")
if (any(is.na(mtcars))) stop("Missing values detected")
