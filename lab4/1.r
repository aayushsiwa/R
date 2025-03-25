# 1. Explore 5 built-in datasets
datasets <- list(mtcars, iris, airquality, ToothGrowth, PlantGrowth)
names(datasets) <- c("mtcars", "iris", "airquality", "ToothGrowth", "PlantGrowth")

for (name in names(datasets)) {
  cat("Dataset:", name, "\n")
  
  # Display summary
  cat("Summary:\n")
  print(summary(datasets[[name]]))
  
  # Display structure
  cat("Structure:\n")
  str(datasets[[name]])
  
  # Display first 5 rows
  cat("First 5 Rows:\n")
  print(head(datasets[[name]], 5))
  
  # Display the number of rows
  cat("Number of Rows:", nrow(datasets[[name]]), "\n")
  
  # Display the number of columns
  cat("Number of Columns:", ncol(datasets[[name]]), "\n\n")
}