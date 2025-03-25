stock_a <- c(12, 22.5, 31.9, 42, 52.1)
market <- c(1.3, 5, 0.8, 1.9, 1.1)

covariance <- cov(stock_a, market)
correlation <- cor(stock_a, market)

cat("\ncovariance =", covariance, "\ncorrelation =", correlation)