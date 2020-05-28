# What is the value of the first measurement if x were normalized (to have mean 0 and variance 1)?

x <- c(8.58, 10.46, 9.01, 9.64, 8.86)

(xc <- (x - mean(x)) / sd(x))[[1]]
# [1] -0.9718658