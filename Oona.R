#  Oona Out of Order
#  Treating the ages lived in Oona Out of Order as an example of the German Tank Problem
# to estimate Oona's maximum age.
#  https://en.wikipedia.org/wiki/German_tank_problem

ages = c(51,27,40,39,31,35,53,19)
base = 18
a = sort(ages-base)
k=length(a)
m=max(a)

#### Frequentist -----------
# https://en.wikipedia.org/wiki/German_tank_problem#Frequentist_analysis
N = m*(1+1/k) -1
varN = (N-k)*(N+1)/(k*k+2)

# Upper limit of confidence interval.
p = seq(0.5,0.01,by=-0.001)
upperCI = base + m / (p**(1/k))
plot(upperCI,p,type="l")


#### Bayesian -----
# https://en.wikipedia.org/wiki/German_tank_problem#Bayesian_analysis

n=seq(36,100-base)

age_prob <- function(n){
  return(choose(m-1,k-1)/choose((n-base),k-1))
}

prob_n = choose(m-1,k-1)/choose(n,k-1)
plot(n+base,prob_n)

for(year in seq(55,100)) { 
  print(paste("Probability of living to Age",year,"equals",age_prob(year) ))
}
  
