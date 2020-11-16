## Factors of numbers

## Item 144: IMAGE. Find an odd integer other than 1, that is the sum of its divisors 
## (e.g., 6 = 1+2+3 and (1,2,3) are the divisors of 6). 24 POINTS

#  No examples found to i=24,901,449


#  Vector of Factors
factors=function(x){
  fact=1
  for (i in 2:(x-1)){
    if(x%%i==0){fact=c(fact,i)}
  }
  return(fact)
}

# Vector the factors, including Negatives
nfactors=function(x){
  fact=-1
  for (i in 2:(x-1)){
    if(x%%i==0){
      if (i<sqrt(x)) {fact=c(fact,-i)}
      if (i==sqrt(x)) {fact=c(fact,-i,i)}
      if (i>sqrt(x)) {fact=c(fact,i)}
    }
  }
  return(fact)
}

# Create list of factors
factorlist=function(x){
  low=-1
  high=x
  delta=x-1
  fact=cbind(low,high,delta)
  for (i in 2:(x-1)){
    if(x%%i==0){
      if (i<sqrt(x)) {fact=rbind(fact,c(-i,x/i,x/i-i))}
      if (i==sqrt(x)) {fact=rbind(fact,c(-i,i,0))}
    }
  }
  return(fact)
}


factorsum=function(x){
  factsum=1
  negsum=-1
  for (i in 2:sqrt(x)){
    if(x%%i==0){
      factsum=factsum+i+x/i
      if(i<sqrt(x)){negsum=negsum-i+x/i}
      }
  }
  return(c(factsum,negsum))
}

n=10

for (i in 1+2*1:n){
{print(c(i,factors(i),factorsum(i)))}
}

n=10000

flips=function(n){
  flip=matrix(0,nrow=2**n,ncol=n)
  for (i in 1:2**n){
    flip[i,]=(-as.integer(intToBits(i)[1:n]))
  }
  return(flip)
}


n=100000

#  Loop with minimum shuffled distance
for (i in 1+2*1:n){
  if (i<=factorsum(i)[2]){
    d=factorlist(i)[,3]
    d=d[d<factorsum(i)[2]-i]
    print(c(i,
            factorsum(i)-i,
            min(abs((factorsum(i)[2]-i)+2*flips(length(d))%*%d)) ) )
  if (min(abs((factorsum(i)[2]-i)+2*flips(length(d))%*%d))==0){
    print(flips(dim(factorlist(i))[1])[abs((factorsum(i)[2]-i)+flips(dim(factorlist(i))[1])%*%factorlist(i)[,3])==0,])
  }
  }
}

