
server <- function(input, output) {

  ToRemoveIds <- c("WAG", "SD", "TF", "SS", "SDis")

  observeEvent(input$WAG, {

    for(id in ToRemoveIds){

      removeUI(
        selector = paste0("div#",id)
      )
    }

    insertUI( selector = "div#WAGAdd", ui= div(plotlyOutput("weightedaverageGUI"), id="WAG"))

     output$weightedaverageGUI = renderPlotly({

      weightedaverageGUI()

     })

    #insertUI( selector = "div#WAAdd", ui= div(DT::dataTableOutput("weightedaverage"), id="WA"))

   # output$weightedaverage = DT::renderDataTable({

    #  weightedaverage()
   # })

    })



  observeEvent(input$SD, {

    for(id in ToRemoveIds){

      removeUI(
        selector = paste0("div#",id)
      )
    }

    insertUI( selector = "div#SDAdd", ui= div(plotlyOutput("Score_Density"), id="SD"))

    output$Score_Density <- renderPlotly({
      ScoreDensity()
    })
  })




  observeEvent(input$TF, {

    for(id in ToRemoveIds){

      removeUI(
        selector = paste0("div#",id)
      )
    }

    insertUI( selector = "div#TFAdd", ui= div(plotlyOutput("Term_Freqency"), id= "TF"))

    output$Term_Freqency <- renderPlotly({
      TermFreqency()
    })
  })

  observeEvent(input$SS, {

    for(id in ToRemoveIds){

      removeUI(
        selector = paste0("div#",id)
      )
    }

    insertUI(selector = "div#SSAdd", ui= div(plotlyOutput("Students_Scores"), id="SS"))

    output$Students_Scores <- renderPlotly({
      ScoreDensityForStudent()
    })
  })

  observeEvent(input$SDis, {

    for(id in ToRemoveIds){

      removeUI(
        selector = paste0("div#",id)
      )
    }

    insertUI(selector = "div#SDisAdd", ui= div(plotlyOutput("Students_Distribution"), id="SDis"))

    output$Students_Distribution <- renderPlotly({
      StudentsDistribution()
    })
  })

}
