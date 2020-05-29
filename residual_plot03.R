library(ggplot2)
data("diamond")

diamond$e <- resid(lm(price ~ carat, data = diamond))

ggplot(diamond, aes(carat, e)) +
    geom_hline(yintercept = 0, size = 2) +
    geom_point(size = 5, color = "black", alpha = 0.5) +
    geom_point(size = 3, color = "blue", alpha = 0.2) +
    labs(
        x = "Mass (carats)",
        y = "Residual price (SIN $)"
    )