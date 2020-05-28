library(UsingR)
library(ggplot2)
data("father.son")

sheight = father.son$sheight
fheight = father.son$fheight

y <- (sheight - mean(sheight)) / sd(sheight)
x <- (fheight - mean(fheight)) / sd(fheight)
rho <- cor(x, y)

ggplot(data.frame(x, y), aes(x, y)) +
    geom_point(size = 6, color = "black", alpha = 0.2) +
    geom_point(size = 4, color = "salmon", alpha = 0.2) +
    xlim(-4, 4) +
    ylim(-4, 4) +
    geom_abline(intercept = 0, slope = 1) +
    geom_vline(xintercept = 0) +
    geom_hline(yintercept = 0) +
    geom_abline(intercept = 0, slope = rho, size = 2) +
    geom_abline(intercept = 0, slope = 1/rho, size = 2)
