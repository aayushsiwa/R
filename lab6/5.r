freq1 <- c(27, 20, 12, 6, 3)
freq2 <- c(3, 6, 12, 20, 27)

skewness <- function(freq) {
  midpoints <- c(11, 13, 15, 17, 19)
  mean <- sum(midpoints * freq) / sum(freq)
  median <- midpoints[which.max(freq)]  
  sd <- sqrt(sum(freq * (midpoints - mean)^2) / sum(freq))
  return((mean - median) / sd)
}

skewness(freq1)
skewness(freq2)