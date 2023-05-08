# Five in a Row
# How many flips to get five heads in a row?
# Inspired by an episode of Taskmaster NZ (series 3)

N=100000
x = rep(0,N)
for (i in 1:N){
  flips=0
  heads=0
  while(heads<5){
    flips=flips+1
    flip=rbinom(1,1,0.5)
    if ( flip==1) {
      heads=heads+1
    } else {
      heads=0
    }
  }
  x[i] = flips  # Number of flips to get to 5 heads in a row
}

summary(x)
quantile(x,c(0.01,0.05,0.1,0.25,0.5,0.75,0.90,0.95,0.99))
hist(x,freq=F,breaks=max(x)-min(x))
table(x)
