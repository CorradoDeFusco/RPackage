#' Weighted Average GUI
#'
#' This function reads the data into the dataframe and give us the trend of the final grades
#' @return the trend of the final degree classification
#' @export
#' @importFrom utils read.csv
#' @importFrom plotly plot_ly
#'
weightedaverageGUI<- function (){

  DfDSE <- read.csv(system.file("extdata/FileDse.csv", package = "MyPackage"))
  Students<-unique(DfDSE$Student)
  p <- plot_ly(
    x = Students,
    y = weightedaverage(Students),
    name = "SF Zoo",
    type = "bar"
  )

  return(p)
}
