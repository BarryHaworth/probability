# Twelves

library(ggplot2)
library(dplyr)

N=1000

d12 <- sample(1:12, N, replace=T)
d6_2 <- sample(1:6, N, replace=T) + sample(1:6, N, replace=T)
d4_3 <- sample(1:4, N, replace=T) + sample(1:4, N, replace=T) + sample(1:4, N, replace=T)

mean(d12)
mean(d6_2)
mean(d4_3)

table(d12)
table(d6_2)
table(d4_3)

twelves <- data.frame(d12=d12, d6=d6_2, d4=d4_3) 

