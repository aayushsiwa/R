To fulfill your request, I'll guide you through the process of obtaining datasets for linear regression, multiple regression, and time series forecasting. Additionally, I'll provide R code examples to demonstrate the calculation of Root Mean Square Error (RMSE), Mean Squared Error (MSE), and Mean Absolute Error (MAE) for regression tasks, as well as implementations of Simple Exponential Smoothing, Holt's Trend Method, ARIMA, and TBATS for time series forecasting.

**1. Linear Regression Datasets**

Here are two datasets suitable for linear regression analysis:

- **Advertising Dataset**: This dataset contains sales revenue generated with respect to advertising spends across various media channels. It includes columns for TV, radio, newspaper advertising budgets, and sales figures.

- **Boston Housing Dataset**: This classic dataset contains information about housing in Boston, including features like crime rate, average number of rooms per dwelling, and property tax rate, with the target variable being the median value of owner-occupied homes.

**2. Multiple Regression Datasets**

For multiple regression analysis, consider the following datasets:

- **Student Performance Dataset**: This dataset includes various attributes related to students' academic performance, such as study time, family background, and health status, aiming to predict final grades.

- **Wine Quality Dataset**: This dataset contains chemical properties of different wine variants, with the goal of predicting wine quality scores.

**3. Time Series Forecasting Dataset**

For time series forecasting, the following dataset is commonly used:

- **Airline Passengers Dataset**: This dataset records the monthly total number of passengers from 1949 to 1960, often used to illustrate time series forecasting methods.

**R Code Examples**

Below are R code examples demonstrating the calculation of RMSE, MSE, and MAE for regression tasks, as well as implementations of various time series forecasting methods.

**Linear Regression: Calculating RMSE, MSE, and MAE**

```r
# Load necessary libraries
library(MASS)  # For the Boston dataset
library(caret) # For RMSE and MAE functions

# Load the Boston Housing dataset
data("Boston")

# Fit a linear regression model
model <- lm(medv ~ lstat, data = Boston)

# Make predictions
predictions <- predict(model, Boston)

# Calculate errors
errors <- predictions - Boston$medv

# Calculate RMSE
rmse <- sqrt(mean(errors^2))

# Calculate MSE
mse <- mean(errors^2)

# Calculate MAE
mae <- mean(abs(errors))

# Output the error metrics
cat("RMSE:", rmse, "\n")
cat("MSE:", mse, "\n")
cat("MAE:", mae, "\n")
```

**Multiple Regression: Calculating RMSE, MSE, and MAE**

```r
# Load necessary libraries
library(MASS)  # For the Boston dataset
library(caret) # For RMSE and MAE functions

# Load the Boston Housing dataset
data("Boston")

# Fit a multiple regression model
model <- lm(medv ~ lstat + rm + age, data = Boston)

# Make predictions
predictions <- predict(model, Boston)

# Calculate errors
errors <- predictions - Boston$medv

# Calculate RMSE
rmse <- sqrt(mean(errors^2))

# Calculate MSE
mse <- mean(errors^2)

# Calculate MAE
mae <- mean(abs(errors))

# Output the error metrics
cat("RMSE:", rmse, "\n")
cat("MSE:", mse, "\n")
cat("MAE:", mae, "\n")
```

**Time Series Forecasting Methods**

```r
# Load necessary libraries
library(forecast)

# Load the AirPassengers dataset
data("AirPassengers")

# Simple Exponential Smoothing
ses_model <- ses(AirPassengers)
ses_forecast <- forecast(ses_model, h = 12)
plot(ses_forecast)

# Holt's Trend Method
holt_model <- holt(AirPassengers)
holt_forecast <- forecast(holt_model, h = 12)
plot(holt_forecast)

# ARIMA
arima_model <- auto.arima(AirPassengers)
arima_forecast <- forecast(arima_model, h = 12)
plot(arima_forecast)

# TBATS
tbats_model <- tbats(AirPassengers)
tbats_forecast <- forecast(tbats_model, h = 12)
plot(tbats_forecast)
```

These code snippets demonstrate how to perform linear and multiple regression analyses, calculate error metrics, and apply various time series forecasting methods using R. Ensure you have the necessary libraries installed and loaded before running the code. 
