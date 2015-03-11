library(shiny)
library(stats)
data(eurodist)

eurodist <- as.matrix(eurodist)

shinyServer(
  function(input, output) {
    output$fromCity2 <- renderPrint({input$fromCity1})
    output$toCity2 <- renderPrint({input$toCity1})
#    text(output$fromCity)
#     #output$oid2 <- renderPrint({input$id2})
#     #output$odate <- renderPrint({input$date})
#     #output$odate <- renderPrint({input$id3})
#     output$inputValue <- renderPrint({input$glucose})
#     output$prediction <- renderPrint({diabetesRisk(input$glucose)})
#     output$newHist <- renderPlot({
#       hist(galton$child, xlab="Child Height", col="blue", main="Histogram")
#       mu <- input$mu
#       lines(c(mu, mu), c(0,200), col="red", lwd=5)
#       mse <- mean((galton$child - mu) ^ 2)
#       text(63, 150, paste("mu =", mu))
#       text(63, 140, paste("MSE =", round(mse, 2)))
    })

# library(UsingR)
# data(galton)
# data(eurodist)
# eurodist <- as.matrix(eurodist)
# shinyServer(
#   function(input, output) {
#     output$myHist <- renderPlot({
#       hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
#       mu <- input$mu
#       lines(c(mu, mu), c(0, 200),col="red",lwd=5)
#       mse <- mean((galton$child - mu)^2)
#       text(63, 150, paste("mu = ", mu))
#       text(63, 140, paste("MSE = ", round(mse, 2)))
#     })
#     
#   }
#)