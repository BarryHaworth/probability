#  The movie watching problem
# I have six movies, and roll a dice to select which one to watch next.
# Once I have less than six left, rolling a number
# that has been watched means I watch something else instead.
# How many rolls to watch them all?

N <- 10000
x = rep(0,N)
for (i in 1:N){
  remaining <- 6
  rolls <- 0
  while(remaining>0){
    rolls <- rolls+1
    roll <- sample.int(6,size=1)
    if(roll<=remaining){
      remaining <- remaining-1
    }
  }
  x[i] = rolls  # Number of rolls to watch them all
}

summary(x)
hist(x,breaks=max(x)-min(x))

