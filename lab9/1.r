data <- read.csv("../data/laptop_prices.csv")

# create a linear regression model RAM vs Price
# calculate mse, rmse and mae

model <- lm(Price_euros ~ Ram, data = data)

# print the model

print(summary(model))

data$predicted_price <- predict(model, newdata = data)

head(data)

# mse
mse <- mean((data$Price_euros - data$predicted_price)^2)

# rmse
rmse <- sqrt(mse)

# mae
mae <- mean(abs(data$Price_euros - data$predicted_price))

list("MSE"=mse, "RMSE"=rmse, "MAE"=mae)

