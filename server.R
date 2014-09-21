mpg <- function(wt, cyl){
 
  ch <- ifelse(cyl == 4, 0, ifelse(cyl == 6, -4.255528, -6.07086))
  
  res <- 33.99079 - 3.205613*wt + ch
  res
}

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$wt})
    output$inputValue2 <- renderPrint({input$cyl})
    output$prediction <- renderPrint({mpg(input$wt, input$cyl)})
  }
  )