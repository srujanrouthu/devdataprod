shinyUI(
  pageWithSidebar(
    headerPanel("Vehice Mileage Prediction"),
    
    sidebarPanel(
      numericInput('wt', 'Weight lb/1000', 1, min = 1, max = 6, step = 0.001),
      selectInput("cyl", label = 'Number of Cylinders', 
                  choices = list("4 Cylinders" = 4, "6 Cylinders" = 6,
                                 "8 Cylinders" = 8), selected = 4),
      submitButton('Calculate Mileage')
      ),
    
    mainPanel(
      h3('Prediction of mileage'),
      h4('You entered the weight as'),
      verbatimTextOutput("inputValue1"),
      h4('You selected the number of cylinders to be'),
      verbatimTextOutput("inputValue2"),
      h4('Your inputs resulted in a mileage prediction of'),
      verbatimTextOutput("prediction")
      )
    )
  )