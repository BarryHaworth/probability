# Betrayal simulation

# House on the hill

sample(c(0,1,2),10,replace=T)

house <- function(){
  for(haunt in 1:12){
    roll <- sum(sample(c(0,1,2),6,replace=T))
    if (roll < haunt) {break}
  }
  return(haunt)
}

N=100000

house.haunt <- rep(0,N)
for (i in 1:N){
  house.haunt[i] <- house()
}
hist(house.haunt,breaks=12)
summary(house.haunt)

baldur <- function(){
  for(haunt in 1:12){
    roll <- sum(sample(c(0,1,2),haunt,replace=T))
    if (roll >=6) {break}
  }
  return(haunt)
}

baldur.haunt <- rep(0,N)
for (i in 1:N){
  baldur.haunt[i] <- baldur()
}
hist(baldur.haunt,breaks=12)
summary(baldur.haunt)
