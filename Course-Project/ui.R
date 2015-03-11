setwd("~/Coursera/Developing-Data-Products/Course-Project")
library(shiny)

eurodist <- as.matrix(eurodist)

shinyUI(
  pageWithSidebar(
    headerPanel("Distance Between 2 European Cities"),
  
    sidebarPanel(
      helpText(strong("Instructions: Pick a city name from each of the two dropdown lists below. Click Submit button to return the road distance (in km) between the 2 cities in Europe. ")),
      selectInput("fromCity1", label="From:", choices=rownames(eurodist), selected=rownames(eurodist)[1]),
      selectInput("toCity1", label="To:", choices=colnames(eurodist), selected=colnames(eurodist)[2]),
      submitButton('Submit')
      ),
    mainPanel(
      p("Distance between ",
            verbatimTextOutput("fromCity2"),
            " and ",
            verbatimTextOutput("toCity2"),
            " is "),
      verbatimTextOutput("distance")
    )
  )
)