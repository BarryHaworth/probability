# D20 to D12
# If I roll a D20 to progressively eliminate records from a list,
# how many times will I roll higher than the number remaining
# before I get to the next dice (a d12)?

N <- 100000
x = rep(0,N)
for (i in 1:N){
  too_big <- 0
  remaining <- 20
  
  while(remaining >12){
    d20 <- sample.int(20,size=1)
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


