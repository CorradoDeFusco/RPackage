#' Analysis scores
#'
#' Takes in a dataframe and the list of students, calculates  classification
#' @param
#' @param
#' @return
#' @export
#'
TermFreqency <- function(){

DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/gradecalculator/FileDse.csv")
Students<-unique(DfDSE$Student)

TermFreq <- table(DfDSE$Date)

Density <- as.vector(TermFreq)
Term <- names(TermFreq)

p <- plot_ly(x = ~Term, y = ~Density, type = 'scatter', mode = 'lines')

return(p)
}
