# A/B C/D
# Calculate the probability of two matching binomial sequences 
# of a given length for different probabilities.

l <- 4  # Length of sequence

pa <- 0.5
pc <- 0.5


N <- 100000
x = rep(0,N)
for (i in 1:N){
  probab <- runif(l)
  probcd <- runif(l)
  match <- (sum((probab > pa)==(probcd > pc)) == l) | 
           (sum((probab > pa)==(probcd < pc)) == l)
  x[i] = match
}

mean(x)
