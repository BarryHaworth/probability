# Euler's number simulation.
# Postit: that if you randomly select numbers in the range (0,1),
# then add them together until you exceed 1, the number needed
# Will average out to e (2.71828...)
# Taken from a post on Reddit:
#  https://www.reddit.com/r/dataisbeautiful/comments/rihb0h/simulation_of_eulers_number_oc/

N <- 1000 # Number of trials
results <- rep(0,N)
y <- rep(0,N)

for (i in (1:N)){
  x <- 0
  sum <- 0
  while (sum<1){
    sum <- sum + runif(1)
    x <- x+1
  }
  results[i] <-x
  y[i] <- mean(results[1:i])
}

mean(results)
plot(1:N,y)
