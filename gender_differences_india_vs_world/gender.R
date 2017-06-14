library(plotly)
library(ggplot2)
gender.data <- read.csv('gender.csv')
sample_data <- data.frame(gender.data$Gender.Statistic.Measure,gender.data$Females..India.,gender.data$Females..World.,gender.data$Males..India.,gender.data$Males..World.)

graph.male.both <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Males..India.,type="bar",name="Male India",marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y=~gender.data$Males..World.,name="Male World",marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
graph.male.india <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Males..India.,type="bar",name="Male India",marker = list(color = 'rgb(49,130,189)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
graph.male.world <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Males..World.,type="bar",name="Male World",marker = list(color = 'rgb(49,130,189)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')

graph.female.both <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Females..India.,type="bar",name="Female India",marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y=~gender.data$Females..World.,name="Female World",marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
graph.female.india <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Females..India.,type="bar",name="Female India",marker = list(color = 'rgb(49,130,189)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
graph.female.world <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Females..World.,type="bar",name="Female World",marker = list(color = 'rgb(49,130,189)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')

graph.both.both <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Females..India.,type="bar",name="Female India",marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y=~gender.data$Females..World.,name="Female World",marker = list(color = 'rgb(204,204,204)')) %>%
  add_trace(y=~gender.data$Males..India.,name="Male India",marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y=~gender.data$Males..World.,name="Male World",marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
graph.both.india <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Females..India.,type="bar",name="Female India",marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y=~gender.data$Males..India.,name="Male India",marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
graph.both.world <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Females..World.,type="bar",name="Female World",marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y=~gender.data$Males..World.,name="Male World",marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
