library(shiny)
library(stats)
data(eurodist)

#The eurodist dataset give the road distances (in km) between 21 cities in Europe. The data are taken from a table in The Cambridge Encyclopaedia.

#convert eurodist to a matrix object. 
eurodist <- as.matrix(eurodist)

shinyServer(
  
  function(input, output) {
    
    #define output text
    output$distancetext <- renderUI({
      
      #use HTML tags so city names and distances are bold
      HTML('Distance between <strong>',
            input$fromCity1,
            "</strong> and <strong>",
            input$toCity1,
            "</strong> is <strong>",
            eurodist[input$fromCity1, input$toCity1],
            "kilometers</strong>.")
   })
    })