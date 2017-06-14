get.year <- function(yr){
  for (i in countries_freq$Var1){
    if(yr==i){
      x=0
      yr.count=yr-1960
      #print(yr.count)
      for(j in c(1:yr.count)){
        x=x+countries_freq[j,2]
        #print(x)
      }
      init=x+1
      final=x+countries_freq[j+1,2]
      return(test[init:final,])
    }
  }
  }