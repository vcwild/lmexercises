library(ggplot2)
library(UsingR)
library(manipulate)
library(dplyr)
data("galton")


# sect 01 -----------------------------------------------------------------
# Manipulative Histogram 
myHist <- function(mu) {
    mse <- mean((galton$child - mu)^2)
    g <- ggplot(galton, aes(x = child)) +
        geom_histogram(fill = "salmon", color = "black", binwidth = 1) +
        geom_vline(xintercept = mu, size = 3) +
        ggtitle(paste("mu = ", mu, ", MeanSqrErr = ", round(mse, 2), sep = ""))
    return (g)
}
manipulate(myHist(mu), mu = slider(62, 74, step = 0.5))


# sect 02 -----------------------------------------------------------------
# Histogram Iterated

ggplot(galton, aes(x = child)) +
    geom_histogram(fill ="salmon", color = "black", binwidth = 1) +
    geom_vline(xintercept = mean(galton$child), size = 3)

