library(shiny)
library(ggplot2)
function(input, output) {
  
  output$grafica <- renderPlot({
    
      graficaBase <- ggplot(data=mpg, aes_string(x=input$variablex, y=input$variabley)) +
        geom_point()
      
      if ((input$facet==T)&&(input$color==T)) 
       graficaBase + geom_point(aes(color=class)) +facet_wrap(~manufacturer,ncol=4)
      
      else if ((input$facet==T)&&(input$color==F)) 
          graficaBase + facet_wrap(~manufacturer, ncol=4)
      
      else if ((input$facet==F)&&(input$color==T)) 
         graficaBase + geom_point(aes(color=class))
      
      else
          graficaBase
      
  })

  formulaText<- reactive({
    paste(input$variablex,"~",input$variabley)
  })
  
  output$titulo <-renderText({
    formulaText()
  })
  
}