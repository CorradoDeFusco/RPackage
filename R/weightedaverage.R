#'
#'ksahdkash
#'@param DfDSE
#'@param DfDSE
#'@return result
#'@export
#'
#'
weightedaverage<- function (DfDSE, Students){

  result<- vector()

  Cfus<-unique(DfDSE$Student)

  for(Student in Students){
    i <- DfDSE$Student == Student
    scores<-DfDSE$Score[i]
    cfu<-DfDSE$Cfu[i]
    result<- c(result, weighted.mean(scores, cfu, na.rm = TRUE)*110/30)
  }
  return(result)
}
