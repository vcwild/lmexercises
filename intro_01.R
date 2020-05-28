library(UsingR)
data("galton")
library(reshape2)
long <- melt(galton)
ggplot(long, aes(value, fill = variable)) +
    geom_histogram(color = "black", binwidth = 1) +
    facet_grid(. ~ variable)

