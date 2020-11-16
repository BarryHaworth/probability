## distribution of 10 d10

N <- 100000
x = rep(0,N)
for (i in 1:N){
  x[i] = sum(sample.int(10, size=10, replace=TRUE))  # 10d10
}

summary(x)
hist(x,nclass=20)
