if(!requireNamespace("calendar",quietly=TRUE)){
  install.packages("calendar")
}
library(calendar)
year <- as.integer(readline(prompt="Enter the year:"))
month <- as.integer(readline(prompt="Enter the month(1-12):"))

calendar::cal(month,year)