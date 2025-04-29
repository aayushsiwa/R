# Enter the quantity in meters
meters <- as.numeric(readline(prompt="Enter quantity in meters: "))

# Convert meters to kilometers and remaining meters
kilometers <- meters %/% 1000
remaining_meters <- meters %% 1000

cat(meters, "meters = ", kilometers, "Km and", remaining_meters, "meters\n")
