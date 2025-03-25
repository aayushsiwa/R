blood_types <- c("A", "O", "A", "B", "B", "AB", "B", "B", "O", "A", 
                 "O", "O", "O", "AB", "B", "AB", "AB", "A", "O", "A")

freq_table <- table(blood_types)
total <- sum(freq_table)

proportions <- freq_table / total
percentages <- proportions * 100
cumulative_freq <- cumsum(freq_table)

freq_distribution <- data.frame(
  Blood_Type = names(freq_table),
  Frequency = as.integer(freq_table),
  Proportion = proportions,
  Percentage = percentages,
  Cumulative_Frequency = cumulative_freq
)

print(freq_distribution)