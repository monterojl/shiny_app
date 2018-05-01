library(shiny)
shinyUI(fluidPage(
   titlePanel("Plot Normal Distribution"),
   sidebarLayout(
      sidebarPanel(
         numericInput("stdDev", "Pick Standard Deviation", value = 3, min = 0.5, max = 5, step = 0.5),
         sliderInput("sliderX", "Pick Minimum and Maximum X Values", -10, 10, value = c(-5, 5)),
         radioButtons(inputId="colors", label="What color would you like to see?", 
                      choices=c("red","green","black")),
         h3("Description"),
         h4("This shiny app will plot a graph with a Normal distribution on the main panel (Right side)."),
         h4("You need to select the Standard Deviation desired on the first input control, Mean will be always set to 0."),
         h4("Additionally you can define how many x values to show, and a color for the line.")
      ),
      mainPanel(
         h3("Graph of Normal Distribution"),
         plotOutput("plot1")
      )
   )
))