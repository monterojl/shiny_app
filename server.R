library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
   output$plot1 <- renderPlot({
      stdDev <- input$stdDev
      minX <- input$sliderX[1]
      maxX <- input$sliderX[2]
      color <-input$colors
      # generate x value ranges
      xvals <- seq(minX, maxX, by = .01)
      # generate data from normal distribution for stdDev
      data <- data.frame(
         y = dnorm(xvals, mean = 0, sd = stdDev), xvals
      )
      # plot
      ggplot(data, aes(x = data$x, y = data$y)) + geom_line(size = 2, color = color)
      
   })
})