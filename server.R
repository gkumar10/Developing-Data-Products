setwd("~/Coursera/Developing-Data-Products")
library(shiny)

diabetesRisk <- function(glucose) glucose/200

shinyServer(
  function(input, output) {
    #output$oid1 <- renderPrint({input$id1})
    #output$oid2 <- renderPrint({input$id2})
    #output$odate <- renderPrint({input$date})
    #output$odate <- renderPrint({input$id3})
    output$inputValue <- renderPrint({input$glucose})
    output$prediction <- renderPrint({diabetesRisk(input$glucose)})
  }
)