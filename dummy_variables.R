
# Dummy variables ---------------------------------------------------------

require(datasets)
data("InsectSprays")
require(stats)

ggplot(InsectSprays, aes(y = count, x = spray, fill = spray)) + 
    geom_violin(color = "black", size = 1) +
    labs(x = "Type of spray", y = "Insect count")

summary(lm(count ~ spray, data = InsectSprays))$coef

fit <- summary(lm(count ~ 
               I(1 * (spray == 'B')) +
               I(1 * (spray == 'C')) +
               I(1 * (spray == 'D')) +
               I(1 * (spray == 'E')) +
               I(1 * (spray == 'F')), 
           data = InsectSprays))$coef
rownames(fit) <- c("A (Intercept)", "B", "C", "D", "E", "F")
fit
