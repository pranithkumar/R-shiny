source("crimevsatheism.R")

shinyServer(function(input, output) {
   
  output$linePlot <- renderPlotly({
    plot_ly(crime.atheism.rate,x=~crime.atheism.rate$country,y=~crime.atheism.rate$crime.rate,name="crime rate",type="scatter",mode="lines")%>%add_trace(y=~crime.atheism.rate$atheism.rate,name="atheism rate",mode="lines+markers")
  })
  
})
