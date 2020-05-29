require(datasets)
data(swiss)
require(GGally)
require(ggplot2)

ggpairs(swiss, lower = list(continuous = "smooth"), wrap = c(method = "loess"))

summary(lm(Fertility ~ ., data = swiss))$coefficients


# Model 2 -----------------------------------------------------------------

summary(lm(Fertility ~ Agriculture, data = swiss))$coefficients
