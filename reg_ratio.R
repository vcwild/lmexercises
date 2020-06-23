# Refer back to the mtcars data set with mpg as an outcome and weight (wt) as the predictor. 
# About what is the ratio of the the sum of the squared errors, \sum_{i=1}^n (Y_i - \hat Y_i)^2
# when comparing a model with just an intercept (denominator) to the model with the intercept and slope (numerator)?

data("mtcars")
x = mtcars$wt
y = mtcars$mpg

fit <- lm(y ~ x)
unit <- lm(y ~ 1)
num <- sum((predict(fit) - y)^2)
denom <- sum((predict(unit) - y)^2)

num/denom
#>[1] 0.2471672
