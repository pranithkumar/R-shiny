library(shiny)
library(plotly)

shinyUI(fluidPage(

  titlePanel("Atheism rate VS Crime Rate"),
  
  sidebarLayout(
    sidebarPanel("Comparison of atheism and crime rate among various countries"),
    mainPanel(
       plotlyOutput("linePlot")
    )
  )
))
