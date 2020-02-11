#' Score Density
#'
#' This function reads the data into the dataframe and calculates how many times occur a certain score
#' @return plot of the Score density
#' @export
#' @importFrom plotly plot_ly
#'
ScoreDensity <- function(){

  DfDSE <- MyPackage::mydata

  tabella <- table(DfDSE$Score)

  Density <- as.vector(tabella)
  Scores <- names(tabella)

  p <- plot_ly(ggplot2::diamonds, y = ~Density, x = ~Scores, type = "box")

  return(p)

}
