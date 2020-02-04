#' ScoreDensityForStudent
#'
#' This function reads the data into the dataframe and calculates the mean, the variance, the min/max score for every student
#' @return plot of the score density for every student
#' @export
#' @importFrom utils read.csv
#' @importFrom plotly plot_ly
#'
ScoreDensityForStudent <- function(){

DfDSE <- read.csv(system.file("extdata/FileDse.csv", package = "MyPackage"))
Students<-unique(DfDSE$Student)

p <- plot_ly(ggplot2::diamonds, y = ~DfDSE$Score, color = ~DfDSE$Student, type = "box")

return(p)

}
