library(ggplot2)


x <- runif(100, 0, 6)
y <- x + rnorm(100, mean = 0, sd = 0.001 * x)

ggplot(data.frame(x, y), aes(x, y)) +
    geom_smooth(method = "lm", color = "black") +
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