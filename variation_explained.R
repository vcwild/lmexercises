library(ggplot2)
data("diamond")


e = c(resid(lm(price ~ 1, data = diamond)), # Variation around the average price
      resid(lm(price ~ carat, data = diamond))) # Variation around the regression line
fit = factor(c(rep("Itc", nrow(diamond)),
               rep("Itc, slope", nrow(diamond))))

ggplot(data.frame(e = e, fit = fit), aes(y = e, x = fit, fill = fit)) +
    geom_dotplot(binaxis = "y", size = 2, stackdir = "center", binwidth = 20) +
    labs(
        x = "Fitting approach",
        y = "Residual price"
    )