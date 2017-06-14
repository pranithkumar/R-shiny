shinyUI(fluidPage(
  titlePanel("GDP analysis of countries"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("year", 
                  label = "Year",
                  min = 1960, max = 2014, value = 2010)
    ),
    mainPanel(
       plotOutput("gdpPlot")
    )
  )
))
