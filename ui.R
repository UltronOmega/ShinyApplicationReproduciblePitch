#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Predict Horsepower from MPG"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG", "what is the MPG of the car?", 10,35, value = 20),
      checkboxInput("showModel1", "show/Hide Model 1", value=TRUE)
      
    ),
    mainPanel(
    plotOutput("plot1"),  
    h3("Predicted Horsepower from Model1: "),
    textOutput("pred1")
    
)
  )))

#sessions-->set working directory-->to source file
#runApp()

