server <- function(input, output) {

      output$selected_var <- renderText({

        Students <- vector()
        Students <- input$text

        if(input$text != ""){
        weightedaverage(Students)

        }
        else{
          print("")
        }

  })


}