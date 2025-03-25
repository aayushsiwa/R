data1 <- c(14, 14, 14, 14, 14)
data2 <- c(11, 12, 14, 16, 17)
data3 <- c(1, 3, 6, 8, 42)

# mean, median, sd, skewness

fun.me <- function(data) {
  m<-mean(data)
  cat("Mean:",m,"\n")
  md<- median(data)
  cat("Median:",md,"\n")
  s<- sd(data)
  cat("Sd:",s,"\n")
  skewness <- mean(data) - median(data)
  if (skewness > 0) {
    return("Positively skewed")
  } else if (skewness < 0) {
    return("Negatively skewed")
  } else {
    return("Symmetrical distribution")
  }
}

fun.me(data1)
fun.me(data2)
fun.me(data3)
