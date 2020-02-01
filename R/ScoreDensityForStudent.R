#' Analysis scores
#'
#' Takes in a dataframe and the list of students, calculates  classification
#' @param
#' @param
#' @return
#' @export
#'
ScoreDensityForStudent <- function(){

DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/gradecalculator/FileDse.csv")
Students<-unique(DfDSE$Student)

p <- plot_ly(ggplot2::diamonds, y = ~DfDSE$Score, color = ~DfDSE$Student, type = "box")

return(p)

}
