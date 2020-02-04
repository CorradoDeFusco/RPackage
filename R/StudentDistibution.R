#' StudentsDistribution
#'
#' Enumerates students by nationality
#' @return map of the students' nationality for this class
#' @export
#' @importFrom utils read.csv
#' @importFrom plotly plot_geo add_trace colorbar layout "%>%"
#'
StudentsDistribution <- function(){

  LAND_ISO <- c("AUT","BEL","BGR","HRV","CYP","CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN","IRL","ITA","LVA","LTU","LUX","MLT","NLD","POL","PRT","ROU","SVK","SVN","ESP","SWE","GBR")

  DfDSE <- read.csv(system.file("extdata/FileDse.csv", package = "MyPackage"))
  Nations <- unique(DfDSE$Nationality)

  StdntPerNation <- vector()

  for(Nation in Nations){

    i <- DfDSE$Nationality == Nation

    StdntPerNation <- c(StdntPerNation,length(unique(DfDSE$Students[i])))

  }

  MyData <- data.frame(StdntPerNation, Nations)

  colnames(MyData) <- c("Students", "Nation")

  df <- data.frame(LAND_ISO)
  colnames(df) <- "Nation"

  total <- merge(MyData,df,by.x="Nation", by.y="Nation", all=TRUE)
  total[is.na(total)] <- 0

  g <- list(
    scope = 'europe')

  p <- plot_geo(total) %>%
    add_trace(
      z = ~Students, locations = ~Nation,
      color = ~Students, colors = 'Purples'
    ) %>%
    colorbar(title = "") %>%
    layout(geo = g
    )

  return(p)

}
