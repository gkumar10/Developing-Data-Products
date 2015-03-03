setwd("~/Coursera/Developing-Data-Products")
library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Diabetes Prediction"),
    
    sidebarPanel(
      numericInput("glucose", 'Glucose mg/dl', 10, min=50, max=200, step=5),
      submitButton('Submit'),
      sliderInput('mu', 'Guess at mean', value=70, min=62, max=74, step=0.05)
      ),
    mainPanel(
      h3('Results of prediction'),
      h4('you entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in prediction of '),
      verbatimTextOutput('prediction'),
      plotOutput('newHist'))
    )
  )

if (FALSE) {
  shinyUI(pageWithSidebar(
  headerPanel("Data Science FTW"),
  sidebarPanel(
    h1('h1 text'), 
    h2('h2 text'), 
    h3('h3 text'), 
    numericInput('id1', 'Numeric input, labeled id1', 0, min=0, max=10, step=1),
    submitButton('Submit'),
    textInput('id3', 'Numeric input, labeled id3'),
    checkboxGroupInput("id2", "Checkbox",
                       c("Value 1" = "1",
                         "Value 2" = "2",
                         "Value 3" = "3")),
    dateInput("date", "Date:")
  ),
  mainPanel(
    h3('Main Panel text!'), 
    code(' ```r date()```'), 
    p('some ordinary text'),
    h4("you entered"),
    verbatimTextOutput("oid1"),
    verbatimTextOutput("oid2"),
    verbatimTextOutput("odate"),
    verbatimTextOutput("oid3")
    )
))
}