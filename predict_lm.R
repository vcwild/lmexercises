library(UsingR)
library(ggplot2)
data("diamond")

-

ggplot(diamond, aes(carat, price)) + 
    geom_point(size = 6, color = "black", alpha = 0.2) +
    geom_point(size = 5, color = "blue", alpha = 0.2) +
    geom_smooth(method = "lm", color = "black") +
    labs(
        x = "Mass (carats)",
        y = "Price (SIN $)"
    )

fit <- lm(price ~ carat, data = diamond)
coef(fit)

fit2 <- lm(price ~ I(carat - mean(carat)), data = diamond)
coef(fit2)

fit3 <- lm(price ~ I(carat * 10), data = diamond)
coef(fit3)

newx <- c(0.16, 0.27, 0.34)
# Y =  ß0 + ß1 * Xi
coef(fit)[1] + coef(fit)[2] * newx
# Same output, read as predict Y for the new X data
predict(fit, newdata = data.frame(carat = newx))
