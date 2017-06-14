library(plotly)
library(ggplot2)
library(shiny)
crime.rate <- read.csv("crime.csv")
atheism.rate <- read.csv("atheism_new.csv")
crime.atheism.rate <- merge(atheism.rate,crime.rate,by = "country")
plot_ly(crime.atheism.rate,x=~crime.atheism.rate$country,y=~crime.atheism.rate$crime.rate,name="crime rate",type="scatter",mode="lines")%>%
add_trace(y=~crime.atheism.rate$atheism.rate,name="atheism rate",mode="lines+markers")