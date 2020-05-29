library(ggplot2)
data("diamond")


fit <- lm(y ~ x, data = diamond)

newx = data.frame(x = seq(min(x), max(x), length = 100))
p1 = data.frame(predict(fit, newdata = newx, interval = ("confidence")))
p2 = data.frame(predict(fit, newdata = newx, interval = ("prediction")))
p1$interval = "confidence"
p2$interval = "prediction"
p1$x = newx$x
p2$x = newx$x
dat = rbind(p1, p2)
names(dat)[1] = "y"

ggplot(dat, aes(x, y)) +
    geom_ribbon(aes(ymin = lwr, ymax = upr, fill = interval), alpha = 0.2) +
    geom_line() +
    geom_point(data = data.frame(x, y), aes(x, y), size = 1)