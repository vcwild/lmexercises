x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
# Fit the regression through the origin and get the slope treating y
# 
# as the outcome and x as the regressor. (Hint, do not center the data since we want regression through the origin, not through the means of the data.)

lm(y ~ x - 1)
#>0.8263 