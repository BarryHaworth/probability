# D12 to D8
# If I roll a D12 to progressively eliminate records from a list,
# how many times will I roll higher than the number remaining
# before I get to the next dice (a d8)?

N <- 100000
x = rep(0,N)
for (i in 1:N){
  too_big <- 0
  remaining <- 12
  
  while(remaining >8){
    d20 <- sample.int(12,size=1)
    if (d20<remaining){
      remaining <- remaining -1
    } else {
      too_big <- too_big +1
    }
  }
  x[i] = too_big
}

summary(x)
table(x)
table(x) / N
hist(x)
