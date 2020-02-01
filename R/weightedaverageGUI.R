require(plotly)
library(plotly)

DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/gradecalculator/FileDse.csv")
Students<-unique(DfDSE$Student)

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


p <- plot_ly(
  x = Students,
  y = weightedaverage(DfDSE, Students),
  name = "SF Zoo",
  type = "bar"
)

p
