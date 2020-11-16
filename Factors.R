## Factors of numbers

## item 144: IMAGE. Find an odd integer other than 1, that is the sum of its divisors 
## (e.g., 6 = 1+2+3 and (1,2,3) are the divisors of 6). 24 POINTS


factors=function(x){
  fact=1
  for (i in 2:(x-1)){
    if(x%%i==0){fact=c(fact,i)}
  }
  return(fact)
}

factorsum=function(x){
  factsum=1
  negsum=-1
  for (i in 2:(x-1)){
    if(x%%i==0){
      factsum=factsum+i
      if(i<sqrt(x)){negsum=negsum-i}
      else if(i>sqrt(x)){negsum=negsum+i}
    }
  }
  return(c(factsum,negsum))
}

n=10

for (i in 1+2*1:n){
  {print(c(i,factors(i)))}
}

n=100000

for (i in 1+2*1:n){
##if (i<factorsum(i)){print(c(i,factorsum(i)))}
if (i==factorsum(i)[2]){print(c(i,factorsum(i)))}
}

