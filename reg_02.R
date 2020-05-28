# Do \verb|data(mtcars)|data(mtcars) from the datasets package and fit the regression
# 
# model with mpg as the outcome and weight as the predictor. Give
# 
# the slope coefficient.

data("mtcars")

with(mtcars, coef(lm(mpg ~ wt)))
#>-5.344472