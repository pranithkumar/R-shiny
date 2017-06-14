library(plotly)
shinyUI(fluidPage(
  
  titlePanel("Gender Differences"),
  
  sidebarLayout(
    sidebarPanel("Genderwise differences in India compared to World",
                 selectInput("gender.select", label = h3("Select gender"), 
                             choices = list("Male"=1, "Female"=2, "Both"=3)),
                 selectInput("country.select", label = h3("Select countries"), 
                             choices = list("India"=1, "World"=2, "Both"=3))
    ),
    
    mainPanel(
       plotlyOutput("barPlot")
    )
  )
))
