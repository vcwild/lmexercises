# In the \verb|mtcars|mtcars data set, fit a linear regression model of weight (predictor) on mpg (outcome). 
# Get a 95% confidence interval for the expected mpg at the average weight. What is the lower endpoint?

data("mtcars")
x = mtcars$wt
y = mtcars$mpg
fit <- lm(y ~ x)
mean = data.frame(x = mean(x))

lwr <- data.frame(predict(fit, newdata = mean, interval = "confidence"))$lwr
lwr
ggplot(mtcars, aes(wt, mpg)) +
    geom_point() +
    geom_smooth(method = "lm", formula = y ~ x, color = "transparent") +
    geom_vline(xintercept = mean(x)) +
    geom_hline(yintercept = lwr, color = "red", linetype = "dashed")



# Consider again the \verb|mtcars|mtcars data set and a linear regression model with mpg as predicted by weight (1,000 lbs). 
# A new car is coming weighing 3000 pounds. Construct a 95% prediction interval for its mpg. What is the upper endpoint?

x = data.frame(x = 3)

upr <- data.frame(predict(fit, newdata = x, interval = "prediction"))$upr
upr


mpi <- cbind(mtcars, predict(fit, interval = "prediction"))

ggplot(mtcars, aes(wt, mpg)) +
    geom_point() +
    geom_ribbon(data = mpi, aes(ymin = lwr, ymax = upr), fill = "blue", alpha = 0.2) +
    geom_vline(xintercept = 3) +
    geom_hline(yintercept = upr, color = "red", linetype = "dashed")


# Consider again the \verb|mtcars|mtcars data set and a linear regression model with mpg as predicted by weight (in 1,000 lbs). 
# A “short” ton is defined as 2,000 lbs. 
# Construct a 95% confidence interval for the expected change in mpg per 1 short ton increase in weight. 
# Give the lower endpoint.


# 1 mpg per 2 ton libs == 1 / 2

x = mtcars$wt
y = mtcars$mpg
fit <- lm(y ~ I(x * 1/2))
confint(fit)[2, 1]
