
ui <- fluidPage(

  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),

  titlePanel(h1("Grade Calculator", align='center')),

  sidebarLayout(
    sidebarPanel(width= 3,
                 div(actionButton("WAG", "Weighted Average"), id="button"),

                # div(actionButton("WAG", "Weighted Average GUI"), id="button"),

                 div(actionButton("SD", "Score Density"), id="button"),

                 div(actionButton("TF", "Terms Frequency"), id="button"),

                 div(actionButton("SS","Students Scores"), id="button"),

                 div(actionButton("SDis","Students Distribution"), id="button"),

      ),
    mainPanel(


      #div(div(DT::dataTableOutput("weightedaverage"), id="WA"), id="WAAdd"),

      div(div(plotlyOutput("weightedaverageGUI"), id="WAG"), id="WAGAdd"),

      div(div(plotlyOutput("Score_Density"), id="SD"), id="SDAdd"),

      div(div(plotlyOutput("Term_Freqency"), id= "TF"), id="TFAdd"),

      div(div(plotlyOutput("Students_Scores"), id="SS"), id="SSAdd"),

      div(div(plotlyOutput("Students_Distribution"), id="SDis"), id="SDisAdd")

    )
  )

)
