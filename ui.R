library(shiny)
shinyUI(fluidPage(
  fluidRow(
    column(3,
           sliderInput("Sepal.Length", label = "Sepal.Length", min = min(iris$Sepal.Length), 
                       max = max(iris$Sepal.Length),value=c(min(iris$Sepal.Length),max(iris$Sepal.Length))),
           
           sliderInput("Sepal.Width", label = "Sepal.Width", min = min(iris$Sepal.Width), 
                       max = max(iris$Sepal.Width), value = c(min(iris$Sepal.Width),max(iris$Sepal.Width))),
           
          sliderInput("Petal.Length", label = "Petal.Length", min = min(iris$Petal.Length), 
                       max = max(iris$Petal.Length), value = c(min(iris$Petal.Length),max(iris$Petal.Length))),
           
           sliderInput("Petal.Width", label = "Petal.Width", min = min(iris$Petal.Width), 
                       max = max(iris$Petal.Width), value = c(min(iris$Petal.Width),max(iris$Petal.Width))),
           
           selectInput("xvar", "x-variable:", choices=names(iris[,-5])),
           selectInput("yvar", "y-variable:", choices=names(iris[,-5]),selected = names(iris[2])),
           selectInput("dvar", "Distribution of which variable for box plot?", choices=names(iris[,-5]),selected = names(iris[3]))
           ),
    
    fluidRow(
      column(5, 
             verbatimTextOutput("summary"),
             dataTableOutput(outputId="subsetdata")),
            column(4, plotOutput("scatterplot"),
             plotOutput("boxplot"))
    )
    
  )))