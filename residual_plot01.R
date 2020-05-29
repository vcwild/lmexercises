library(ggplot2)
set.seed(142)


x = runif(100, -3, 3)
y = x + sin(x) + rnorm(100, sd = 0.2)

ggplot(data.frame(x, y), aes(x, y)) + 
    geom_smooth(formula = y ~ x, method = "lm", color = "black") +
    geom_point(size = 5, color = "black", alpha = 0.4) +
    geom_point(size = 3, color = "red", alpha = 0.4)




# Residuals plot ----------------------------------------------------------

resid = resid(lm(y ~ x))

ggplot(data.frame(x, resid), aes(x, resid)) +
    geom_hline(yintercept = 0, size = 2) +
    geom_point(size = 5, color = "black", alpha = 0.4) +
    geom_point(size = 3, color = "red", alpha = 0.4) +
    labs(
        x = "X",
        y = "Residual"
    )
    
