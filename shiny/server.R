# setwd("~/Coursera/Developing-Data-Products")
# library(shiny)
# library(UsingR)
# data(galton)
# 
# diabetesRisk <- function(glucose) glucose/200
# 
# shinyServer(
#   function(input, output) {
#     #output$oid1 <- renderPrint({input$id1})
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
#     })
#   }
# )

library(UsingR)
data(galton)

shinyServer(
  function(input, output) {
    output$myHist <- renderPlot({
      hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
      mu <- input$mu
      lines(c(mu, mu), c(0, 200),col="red",lwd=5)
      mse <- mean((galton$child - mu)^2)
      text(63, 150, paste("mu = ", mu))
      text(63, 140, paste("MSE = ", round(mse, 2)))
    })
    
  }
)