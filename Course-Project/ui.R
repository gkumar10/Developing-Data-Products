setwd("~/Coursera/Developing-Data-Products/Course-Project")
library(shiny)

eurodist <- as.matrix(eurodist)

shinyUI(
  pageWithSidebar(
    headerPanel("Distances Between 2 European Cities"),
  
    sidebarPanel(
      helpText("Instructions: pick 2 cities from the dropdown lists. The data give the road distances (in km) between 21 cities in Europe. The data are taken from a table in The Cambridge Encyclopaedia."),
      selectInput("fromCity1", label="From:", choices=rownames(eurodist), selected=rownames(eurodist)[1]),
      selectInput("toCity1", label="To:", choices=colnames(eurodist), selected=colnames(eurodist)[2]),
      submitButton('Submit')
      ),
    mainPanel(
      h4('From City'),
      verbatimTextOutput("fromCity2"),
      h4('To City'),
      verbatimTextOutput("toCity2")
#       h4('Which resulted in prediction of '),
#       verbatimTextOutput('prediction'),
#       plotOutput('newHist'))
    )
  )
# 
# if (FALSE) {
#   shinyUI(pageWithSidebar(
#   headerPanel("Data Science FTW"),
#   sidebarPanel(
#     h1('h1 text'), 
#     h2('h2 text'), 
#     h3('h3 text'), 
#     numericInput('id1', 'Numeric input, labeled id1', 0, min=0, max=10, step=1),
#     submitButton('Submit'),
#     textInput('id3', 'Numeric input, labeled id3'),
#     checkboxGroupInput("id2", "Checkbox",
#                        c("Value 1" = "1",
#                          "Value 2" = "2",
#                          "Value 3" = "3")),
#     dateInput("date", "Date:")
#   ),
#   mainPanel(
#     h3('Main Panel text!'), 
#     code(' ```r date()```'), 
#     p('some ordinary text'),
#     h4("you entered"),
#     verbatimTextOutput("oid1"),
#     verbatimTextOutput("oid2"),
#     verbatimTextOutput("odate"),
#     verbatimTextOutput("oid3")
#     )
# ))
# }
 
#  shinyUI(pageWithSidebar(
#    headerPanel("Example plot"),
#    sidebarPanel(
#      sliderInput('mu', 'Guess at the mu',value = 70, min = 60, max = 80, step = 0.05,)
#    ),
#    mainPanel(
#      plotOutput('newHist')
#    )
#  )
)