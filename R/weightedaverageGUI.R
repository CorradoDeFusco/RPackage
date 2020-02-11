#' Weighted Average GUI
#'
#' This function reads the data into the dataframe and give us the trend of the final grades
#' @param Students List of Students
#' @return the trend of the final degree classification
#' @export
#' @importFrom plotly plot_ly
#'
weightedaverageGUI<- function (Students){

  if(missing(Students))
    Students <- unique(MyPackage::mydata$Students)

  df <- data.frame(weightedaverage(Students), stringsAsFactors = FALSE)

  df <- df[order(-df$complete, df$degree),]

  df$Students <- factor(df$Students, levels = df$Students)

  colors <- vector()

  for(completed in df$complete){

    colors <- c(colors, if(completed) "green" else "red")
  }

  p <- plot_ly(
    x = df$Students,
    y = df$degree,
    type = "bar",
    marker = list(color = colors)
  )

  return(p)
}
