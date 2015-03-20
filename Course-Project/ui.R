library(shiny)

#The eurodist dataset give the road distances (in km) between 21 cities in Europe. The data are taken from a table in The Cambridge Encyclopaedia.

#convert eurodist to a matrix object. 
eurodist <- as.matrix(eurodist)

#set text for instructions
text1 <- "Pick a city name from each of the two dropdown lists below."
text2 <- "Click Submit button."

shinyUI(
  pageWithSidebar(
    
    #set header text
    headerPanel("Find Distance Between 2 European Cities"),
  
    #fill side panel with help text (instructions), 2 list boxes and 1 submit button
    sidebarPanel(
      h4("This Shiny app will provide road distances in kilometers between 21 European cities."),
      helpText(strong("Instructions:")),
      helpText(strong(tags$ol(tags$li(text1), tags$li(text2)))),
      h2("Input:"),
      selectInput("fromCity1", label="From:", choices=rownames(eurodist), selected=rownames(eurodist)[1]),
      selectInput("toCity1", label="To:", choices=colnames(eurodist), selected=colnames(eurodist)[2]),
      submitButton('Submit')
      ),
    
    mainPanel(
      
      #show output
      h2("Output:"),
      uiOutput("distancetext")
      
    )
  )
)