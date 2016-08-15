# Developing Data Products: Course Project

# ui.R file

# This app helps people to choose the best car that they want to buy,
# based on their car preferences using mtcars dataset, from [R] 

library(markdown)

shinyUI(navbarPage("Select the best car to buy (based on your requirements)",
        tabPanel("Table",
                   
        # Sidebar
        sidebarLayout(
            sidebarPanel(
                helpText("Provide information the type of car that you would like to purchase"),
                sliderInput('milespg', 'Min Miles Per Gallon:', min=10, max=40, value=c(10,40), step=0.1),
                sliderInput('hp', 'Gross Horsepower', min=50, max=340, value=c(50,340), step=10),
                checkboxGroupInput('cyl', 'Number of Cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)),
                numericInput('dis', 'Distance (in miles) you will drive per week:', 50, min = 1, max = 1000)
            ),
            
            
            mainPanel(
               dataTableOutput('table')
            )
        )
),
        tabPanel("About",
            mainPanel(
                includeMarkdown("about.md")
            )
        )
    )
)   