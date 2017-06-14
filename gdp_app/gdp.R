library(plotly)
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
gdp_data<-read.csv("gdp.csv")
gdp_df<-data.frame(gdp_data$Country.Code,gdp_data$Value,gdp_data)
data_fm<-as.data.frame(gdp_data)
test<-data_fm[order(data_fm$Year,decreasing = FALSE),]
data_fm_dict<-data.frame(test$Country.Name,test$Country.Code,test$Value)
countries_freq<-as.data.frame(table(data_fm$Year))
