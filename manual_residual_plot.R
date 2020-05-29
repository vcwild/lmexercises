library(UsingR)
library(ggplot2)
data("diamond")


ggplot(diamond, aes(carat, price)) +
    geom_point(size = 7, color = "black", alpha = 0.5) +
    geom_point(size = 5, color = "blue", alpha = 0.2) +
    geom_smooth(method = "lm", color = "black") +
    labs(
        x = "Mass (carats)",
        y = "Price (SIN $)"
    )


# Residuals ---------------------------------------------------------------

y <- diamond$price ; x <- diamond$carat; n <- length(y)
fit <- lm(y ~ x)
e <- resid(fit)
yhat <- predict(fit)

max(abs(e - (y - yhat)))
max(abs(e - (y - coef(fit)[1] - coef(fit)[2] * x)))

# Sum of residuals must be zero
round(sum(e), 10)
round(sum(e * x), 10)


# Regression Plot ---------------------------------------------------------

plot(x, y,
     xlab = "Mass (carats)",
     ylab = "Price (SIN $)",
     bg = "lightblue",
     col = "black",
     cex = 1.1,
     pch = 21,
     frame = FALSE)
abline(fit, lwd = 2)
for (i in 1:n) {
    lines(
        c(x[i], x[i]), 
        c(y[i], yhat[i]), 
        col = "red", 
        lwd = 2
    )
}


# Residual Plot -----------------------------------------------------------

plot(x, e,
     xlab = "Mass (carats)",
     ylab = "Residuals (SIN $)",
     bg = "lightblue",
     col = "black",
     cex = 2,
     pch = 21,
     frame = FALSE)
abline(h = 0, lwd = 2)
for (i in 1:n) {
    lines(
        c(x[i], x[i]), 
        c(e[i], 0), 
        col = "red", 
        lwd = 2
    )
}
