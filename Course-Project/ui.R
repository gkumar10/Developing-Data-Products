#setwd("~/Coursera/Developing-Data-Products/Course-Project")
library(shiny)

#The eurodist dataset give the road distances (in km) between 21 cities in Europe. The data are taken from a table in The Cambridge Encyclopaedia.

#convert eurodist to a matrix object. 
eurodist <- as.matrix(eurodist)

shinyUI(
  pageWithSidebar(
    
    #set header text
    headerPanel("Distance Between 2 European Cities"),
  
    #fill side panel with help text (instructions), 2 list boxes and 1 submit button
    sidebarPanel(
      h1("Input:"),
      helpText(strong("Instructions: Pick a city name from each of the two dropdown lists below. Click Submit button to learn the road distance (in km) between the 2 cities in Europe. ")),
      selectInput("fromCity1", label="From:", choices=rownames(eurodist), selected=rownames(eurodist)[1]),
      selectInput("toCity1", label="To:", choices=colnames(eurodist), selected=colnames(eurodist)[2]),
      submitButton('Submit')
      ),
    
    mainPanel(
      
      #show output
      h1("Output:"),
      uiOutput("distancetext")
      
    )
  )
)