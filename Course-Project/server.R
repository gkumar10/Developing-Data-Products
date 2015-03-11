library(shiny)
library(stats)
data(eurodist)

eurodist <- as.matrix(eurodist)

shinyServer(
  function(input, output) {
    output$fromCity2 <- renderPrint({input$fromCity1})
    output$toCity2 <- renderPrint({input$toCity1})
    output$distance <- renderPrint({eurodist[input$fromCity1, input$toCity1]})
    })