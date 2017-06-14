source("gdp.R")

shinyServer(function(input, output) {
  output$gdpPlot<-renderPlotly({
    df<-get.year(input$year)
    p <- plot_ly(
      x = df$Country.Code,
      y = df$Value,
      name = "GDP",
      text = df$Country.Name,
      type = "bar"
    )
  })
})
