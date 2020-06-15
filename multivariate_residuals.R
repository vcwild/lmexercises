set.seed(142)
library(ggplot2)


n <- 100
x2 <-  1:n
x1 <- 0.01 * x2 + runif(n, -.1, .1)
y = -x1 + x2 + rnorm(n, sd = 0.01)

summary(lm(y ~ x1))$coef
summary(lm(y ~ x1 + x2))$coef

dat = data.frame(y = y, x1 = x1, x2 = x2, ey = resid(lm(y ~ x2)), ex1 = resid(lm(x1 ~ x2)))
ggplot(dat, aes(y = y, x = x1, color = x2)) +
    geom_smooth(method = "lm", se = FALSE, color = "black") +
    geom_point(color = "grey50", size = 3) +
    geom_point(size = 2)
    
# Residual plot -----------------------------------------------------------

ggplot(dat, aes(y = ey, x = ex1, color = x2)) +
    geom_smooth(method = "lm", se = FALSE, color = "black") +
    geom_point(color = "grey50", size = 3) +
    geom_point(size = 2)

# Unnecessary variable created ---------------------------------------------------

z <- swiss$Agriculture + swiss$Education
lm(Fertility ~ . + z, data = swiss)

# R auto assign NA for the z variable (useless)

