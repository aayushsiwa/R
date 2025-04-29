class_intervals <- c("0-10", "10-20", "20-30", "30-40", "40-50", "50-60", "60-70", "70-80")
frequencies <- c(6, 12, 22, 48, 56, 32, 18, 6)
midpoints <- c(5, 15, 25, 35, 45, 55, 65, 75)

total_freq <- sum(frequencies)
mean <- sum(midpoints * frequencies) / total_freq

cumulative_freq <- cumsum(frequencies)
median_class_index <- which(cumulative_freq >= total_freq / 2)[1]

l <- (median_class_index - 1) * 10  
f <- frequencies[median_class_index] 
CF <- ifelse(median_class_index == 1, 0, cumulative_freq[median_class_index - 1]
h <- 10 

median <- l + ((total_freq / 2 - CF) / f) * h

skewness <- (mean - median) / sd(midpoints)

print(paste("Mean:", mean))
print(paste("Median:", median))
print(paste("Skewness:", skewness))
