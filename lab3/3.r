beaver1$id <- 1
beaver2$id <- 2
combined_beavers <- rbind(beaver1,beaver2)

subset_temp_above_10 <- subset(combined_beavers,temp>10)
print(subset_temp_above_10)
