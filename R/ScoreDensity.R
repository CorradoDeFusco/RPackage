#' Analysis scores
#'
#' Takes in a dataframe and the list of students, calculates  classification
#' @param
#' @param
#' @return
#' @export
#'

ScoreDensity <- function(){

DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/gradecalculator/FileDse.csv")

tabella <- table(DfDSE$Score)

Density <- as.vector(tabella)
Scores <- names(tabella)

p <- plot_ly(ggplot2::diamonds, y = ~Density, color = ~Scores, type = "box")

return(p)

}
