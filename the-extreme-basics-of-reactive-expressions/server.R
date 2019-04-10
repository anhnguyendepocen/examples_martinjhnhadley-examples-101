server <- function(input, output, session) {
  
  output$random_histogram <- renderPlot({
    
    hist(rnorm(20))
    
  })
  
}