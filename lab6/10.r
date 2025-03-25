val<-c(0,1,2,3,4,5,6,7)
fre<-c(4,1,2,1,3,2,1,1)
data_expanded <- rep(val, fre)


mean_val <- mean(data_expanded)
sd_val <- sd(data_expanded)
z_scores <- (data_expanded - mean_val) / sd_val

quartiles <- quantile(data_expanded, probs = c(0.25, 0.5, 0.75))

five_num_summary <- fivenum(data_expanded)

print(paste("Mean:", mean_val))
print(paste("Standard Deviation:", sd_val))
print("Z-Scores:")
print(z_scores)
print("Quartiles:")
print(quartiles)
print("Five Number Summary:")
print(five_num_summary)