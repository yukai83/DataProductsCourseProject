# Developing Data Products: Course Project

# Server.R file

# This app helps people to choose the best car that they want to buy,
# based on their car preferences using mtcars dataset, from [R] 

library(shiny)
library(datasets)
library(dplyr)

shinyServer(function(input, output) {

    # Show the cars after filtering
    output$table <- renderDataTable({
        hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1)
        milespg_seq <- seq(from = input$milespg[1], to = input$milespg[2], by = 0.1)
        data <- transmute(mtcars, Car = rownames(mtcars), MilesPerGallon = mpg, 
                          Cylinders = cyl, Horsepower = hp, 
                          Transmission = am)
        data <- filter(data, Cylinders %in% input$cyl, Horsepower %in% hp_seq, Transmission %in% input$am, MilesPerGallon %in%  milespg_seq)
        data <- mutate(data, Transmission = ifelse(Transmission==0, "Automatic", "Manual"))
        data <- arrange(data, MilesPerGallon )
        data
    }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30))
})