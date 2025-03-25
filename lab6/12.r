# Covariance and Correlation of Eruption Duration and Waiting Time
# library(datasets)
# data_faithful <- faithful  

data_faithful <- read.csv("../data/faithful_data.csv")

head(data_faithful)


cov_val <- cov(data_faithful$eruptions, data_faithful$waiting)
corr_val <- cor(data_faithful$eruptions, data_faithful$waiting)

print(paste("Covariance between eruption duration and waiting time:", round(cov_val, 2)))
print(paste("Correlation coefficient:", round(corr_val, 2)))

if (abs(corr_val) > 0.7) {
  print("There is a strong linear relationship between eruption duration and waiting time.")
} else if (abs(corr_val) > 0.4) {
  print("There is a moderate linear relationship between eruption duration and waiting time.")
} else {
  print("There is a weak or no linear relationship between eruption duration and waiting time.")
}
