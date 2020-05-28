# Consider data with an outcome (Y) and a predictor (X). 
# The standard deviation of the predictor is one half that of the outcome. The correlation between the two variables is .5. 
# What value would the slope coefficient for the regression model with YY as the outcome and XX as the predictor?

# beta1 cor(y, x) * sd(y) / sd(x)
# sd(x) / sd(y) = 1/2
# sd(y) / sd(x) = 2
sdy_by_sdx = 2
cor = .5

(beta1 <- cor * sdy_by_sdx)
#>[1] 1
