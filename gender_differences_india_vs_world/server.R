source('gender.R')

shinyServer(function(input, output) {
   
  output$barPlot <- renderPlotly({
    switch(as.numeric(input$gender.select),
           switch(as.numeric(input$country.select),graph.male.india,graph.male.world,graph.male.both),
           switch(as.numeric(input$country.select),graph.female.india,graph.female.world,graph.female.both),
           switch(as.numeric(input$country.select),graph.both.india,graph.both.world,graph.both.both)
           )
    })
})
