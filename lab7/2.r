data <- read.csv("../data/real_estate.csv")

# in the dataset, create a new column called bhk, add columns bedrooms and bathrooms

data$bhk <- data$bedrooms + data$bathrooms

# create a multiple regression model bhk, sqft_living, sqft_lot vs price

model <- lm(price ~ bhk + sqft_living + sqft_lot , data = data)

# print the model

print(summary(model))

data$predicted_price <- predict(model, newdata = data)

head(data)

# mse
mse <- mean((data$price - data$predicted_price)^2)

# rmse
rmse <- sqrt(mse)

# mae
mae <- mean(abs(data$price - data$predicted_price))

list("MSE"=mse, "RMSE"=rmse, "MAE"=mae)