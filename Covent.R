## The Covent Garden Problem
## Mrs Smith and Mrs Jones have a number of apples to sell.  
## Mrs Smith sells 3 apples for a penny but 
## Mrs Jones has larger apples so she sells 2 apples for a penny.

## Mrs Smith has to leave on an errand so she gives her apples 
## to Mrs Jones to sell on her behalf.  
## Mrs Jones mixes all the apples together and 
## sells 5 apples for 2p.  
## When all the apples are sold, the two women 
## divide the proceeds but find that they've 
## actually lost 7p off the value of the apples overall.  
 
## How much money has Mrs Jones actually lost?

S = seq(3,3000,by=3)
J = seq(2,2000,by=2)

# Check

for (i in 1:100){
  for (j in 1:100){
    if ((S[i]+J[j]) %% 5 ==0){
      if (S[i]/3 + J[j]/2 - 2*(S[i]+J[j])/5 == 7){
        print(paste("S = ",S[i],"J = ",J[j]))
        ##print(paste("Mrs Smith sells",S[i],"apples for",S[i]/3))
        ##print(paste("Mrs Jones sells",J[j],"apples for",J[j]/2))
        ##print(paste("Combined sales of",2*(S[i]+J[j])/5))
      }
    }
  }
}
