# Consider the following data with x as the predictor and y as as the outcome.

x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)

# Give a P-value for the two sided hypothesis test of whether β1 from a linear regression model is 0 or not.

fit <- lm(y ~ x)

summary(fit)$coefficients[[2, 4]]
#> [1] 0.05296439


# Consider the previous problem, give the estimate of the residual standard deviation.
summary(fit)$sigma
#> [1] 0.2229981