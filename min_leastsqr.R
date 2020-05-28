# Consider the data set given below
x <- c(0.18, -1.54, 0.42, 0.95)
# And the weights
w <- c(2, 1, 3, 1)

# Give the value of \muμ that minimizes the least squares equation

mu <- c(0.0025, 1.077, 0.3, 0.1471)

(beta <- sum(x * w) / sum(w))
#>[1] 0.1471429