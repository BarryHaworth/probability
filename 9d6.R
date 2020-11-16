## distribution of 9 d6

N <- 100000
x = rep(0,N)
for (i in 1:N){
  x[i] = sum(sample.int(6, size=9, replace=TRUE))  # 9d6
  }

summary(x)
hist(x)
