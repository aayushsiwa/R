# Load Data
data <- read.csv("../data/AAPL.csv")

# Create Time Series Object
ts_data <- ts(data$Close, start = c(2024, 1), frequency = 12)

# Plot Original Data
plot(ts_data, main = "AAPL Close Price", xlab = "Year", ylab = "Close Price", type = "l")

# Simple Exponential Smoothing (Manual Calculation)
alpha <- 0.2  # Smoothing factor
ses_forecast <- numeric(length(ts_data) + 12)  # Extend for 12 future steps
ses_forecast[1] <- ts_data[1]

# Compute SES for historical data
for (t in 2:length(ts_data)) {
  ses_forecast[t] <- alpha * ts_data[t] + (1 - alpha) * ses_forecast[t-1]
}

# Forecast future values (use last smoothed value, not just copy)
for (t in (length(ts_data) + 1):(length(ts_data) + 12)) {
  ses_forecast[t] <- alpha * ses_forecast[t-1] + (1 - alpha) * ses_forecast[t-1]
}

# Plot SES Forecast
plot(ts_data, type = "l", main = "SES Forecast", xlab = "Year", ylab = "Close Price")
lines(seq(start(ts_data)[1], start(ts_data)[1] + (length(ses_forecast) - 1)/12, by = 1/12), ses_forecast, col = "red")

# Holt’s Linear Trend Method (Manual)
beta <- 0.1  # Trend smoothing factor
level <- numeric(length(ts_data))
trend <- numeric(length(ts_data))
holt_forecast <- numeric(length(ts_data) + 12)

level[1] <- ts_data[1]
trend[1] <- ts_data[2] - ts_data[1]

# Compute Holt’s for historical data
for (t in 2:length(ts_data)) {
  level[t] <- alpha * ts_data[t] + (1 - alpha) * (level[t-1] + trend[t-1])
  trend[t] <- beta * (level[t] - level[t-1]) + (1 - beta) * trend[t-1]
  holt_forecast[t] <- level[t] + trend[t]
}

# Forecast future values using the last known trend
for (t in (length(ts_data) + 1):(length(ts_data) + 12)) {
  holt_forecast[t] <- level[length(ts_data)] + (t - length(ts_data)) * trend[length(ts_data)]
}

# Plot Holt’s Forecast
plot(ts_data, type = "l", main = "Holt's Trend Forecast", xlab = "Year", ylab = "Close Price")
lines(seq(start(ts_data)[1], start(ts_data)[1] + (length(holt_forecast) - 1)/12, by = 1/12), holt_forecast, col = "blue")

# ARIMA (Using Base R's arima())
arima_model <- arima(ts_data, order = c(1, 1, 1))  # Simple ARIMA(1,1,1) model
arima_forecast <- predict(arima_model, n.ahead = 12)$pred

# Plot ARIMA Forecast
plot(ts_data, type = "l", main = "ARIMA Forecast", xlab = "Year", ylab = "Close Price")
lines(seq(end(ts_data)[1] + 1/12, end(ts_data)[1] + 12/12, by = 1/12), arima_forecast, col = "green")

# Accuracy Calculation (Manual)
mse <- function(actual, predicted) {
  mean((actual - predicted)^2, na.rm = TRUE)
}

ses_mse <- mse(ts_data, ses_forecast[1:length(ts_data)])
holt_mse <- mse(ts_data, holt_forecast[1:length(ts_data)])

cat("SES MSE:", ses_mse, "\n")
cat("Holt MSE:", holt_mse, "\n")
