#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(datasets)
library(UsingR)
data("diamond")
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    model <- lm(price ~ carat, data = diamond)
    
    
    modelpred <- reactive({
        CaratInput <- input$sliderCarat
        predict(model, newdata = data.frame(carat = CaratInput))
    })
    
    
    output$plot <- renderPlot({
        CaratInput <- input$sliderCarat
        
        plot(diamond$carat, diamond$price, xlab = "Mass (carats)", 
             ylab = "Price (SIN $)", bty = "n", pch = 16,
             xlim = c(0, 6), ylim = c(0, 20000))
        if(input$showModel){
            abline(model, col = "red", lwd = 2)
        }
        points(CaratInput, modelpred(), col = "red", pch = 16, cex = 2)
        
        
    })
    
    output$pred <- renderText({
        modelpred()
    })
    
    
})
