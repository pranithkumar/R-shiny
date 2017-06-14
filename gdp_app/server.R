source("gdp.R")

shinyServer(function(input, output) {
  output$gdpPlot<-renderPlot({
    df<-get.year(input$year)
    barplot(df$Value,names.arg = df$Country.Code,las=2)
  })
})