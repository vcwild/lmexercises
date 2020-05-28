# Students were given two hard tests and scores were normalized to have empirical mean 0 and variance 1. 
# The correlation between the scores on the two tests was 0.4. 
# What would be the expected score on Quiz 2 for a student who had a normalized score of 1.5 on Quiz 1?
# 
# beta1 <- sum(yc * xc) / sum(xc ^ 2)

#0.4 = 1.5*q2 / 1.5^2
(0.4*1.5^2 / 1.5 -> q2)
#>[1] 0.6