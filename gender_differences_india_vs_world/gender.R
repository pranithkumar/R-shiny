library(plotly)
library(ggplot2)
gender.data <- read.csv('gender.csv')
gender_f_india <- c(gender.data$Females..India.)
gender_f_world <- c(gender.data$Females..World.)
gender_m_india <- c(gender.data$Males..India.)
gender_m_world <- c(gender.data$Males..World.)
gender_m <- c(gender_m_india,gender_m_world)
gender_f <- c(gender_f_india,gender_f_world)
gender_all_india <- c(gender_f_india,gender_m_india)
gender_all_world <- c(gender_f_world,gender_m_world)
gender_all <- c(gender_all_india,gender_all_world)
gender.matrix.india.all <- matrix(gender_all_india,nrow = 2,byrow = T)
gender.matrix.world.all <- matrix(gender_all_world,nrow = 2,byrow = T)
gender.matrix.both.all <- matrix(gender_all,nrow = 4,byrow = T)
gender.matrix.both.m <- matrix(gender_m,nrow = 2,byrow = T)
gender.matrix.india.m <- matrix(gender_m_india,nrow = 1,byrow = T)
gender.matrix.world.m <- matrix(gender_m_world,nrow = 1,byrow = T)
gender.matrix.both.f <- matrix(gender_f,nrow = 2,byrow = T)
gender.matrix.india.f <- matrix(gender_f_india,nrow = 1,byrow = T)
gender.matrix.world.f <- matrix(gender_f_world,nrow = 1,byrow = T)
sample_data <- data.frame(gender.data$Gender.Statistic.Measure,gender.data$Females..India.,gender.data$Females..World.)
p <- plot_ly(sample_data,x=~gender.data$Gender.Statistic.Measure,y=~gender.data$Females..India.,type="bar",name="Female India",marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y=~gender.data$Females..World.,name="Female World",marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
q <- plot_ly(
  x = gender.data$Gender.Statistic.Measure,
  y = gender.data$Females..India.,
  name = "Female India",
  type = "bar"
)