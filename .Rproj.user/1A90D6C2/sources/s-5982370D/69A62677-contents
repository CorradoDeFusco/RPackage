#' Score Density
#'
#' This function reads the data into the dataframe and calculates how many times occur a certain score
#' @return plot of the Score density
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
