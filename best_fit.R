# What value minimizes the sum of the squared distances between these points and itself?

x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)

for (y in c(0.573, 0.8, 0.36, 0.44)) {
    SSE <- sum((x - y)^2)
    print(paste("Y = ", y, ", ", "SSE = ", SSE, sep = ""))
}
#>[1] "Y = 0.573, SSE = 0.25401"