library(ggplot2)
library(UsingR)
library(manipulate)
library(dplyr)
data("galton")


# sect 01 -----------------------------------------------------------------
# Scatterplot

freqData <- as.data.frame(table(galton$child, galton$parent))
names(freqData) <- c("child", "parent", "freq")
freqData$child <- as.numeric(as.character(freqData$child))
freqData$parent <- as.numeric(as.character(freqData$parent))

ggplot(filter(freqData, freq > 0), aes(x = parent, y = child)) +
    scale_size(range = c(2, 20)) +
    geom_point(color = "grey50", aes(size = freq + 10, )) +
    geom_point(aes(color = freq, size = freq)) +
    scale_color_gradient(low = "lightblue", high = "white") +
    geom_smooth(method = "lm", formula = y ~ x, se = FALSE)
