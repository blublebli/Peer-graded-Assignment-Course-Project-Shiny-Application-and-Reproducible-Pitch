#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(datasets)
library(UsingR)
data("diamond")
library(shiny)

# Define UI for application that draws a histogram


shinyUI(fluidPage(
    titlePanel("Predicting the price of a diamond"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderCarat", "What is price of a diamond?", 0, 6, value = 0.1),
            checkboxInput("showModel", "Show/Hide regression line", value = TRUE),
            submitButton("Submit") 
        ),
        mainPanel(
            plotOutput("plot"),
            h3("Predicted price of a diamond:"),
            textOutput("pred"),
            
        )
    )
))
