#' Adjusted Final Degree Classification
#'
#' Takes a possible score to all the exams that you still need to do and calculates your "adjusted" final degree
#' @param score it's one possible mark between 18 and 30 that you can take in your missing exams
#' @return adjusted final degree classification
#' @export
#'
adjustedfinaldegree <- function (score){

  DfDSE <- MyPackage::mydata

  if(score < 18 | score >33){
    print("Insert a value between 18 and 33")
    return(1)
  }

  else{
    i <- is.na(DfDSE$Score)
    DfDSE$Score[i] <- score

    Students<-DfDSE$Students[i]
    Subjects<-DfDSE$Subject[i]
    CFUs<-DfDSE$Cfu[i]
    Scores <- DfDSE$Score[i]
    VotoLaurea<-weightedaverage(Students,DfDSE)$degree

    df <- data.frame('Stdents' = Students, 'Subjects' = Subjects, 'cfu' = CFUs, 'Score'= Scores, 'AdjFinalDegree' = VotoLaurea)
    }

  return(df)

}

