adjustedfinaldegree <- function (DfDSE, score){
  
if(score < 18 | score >33)
  print("Insert a value between 18 and 33")
  
else{
i <- is.na(DfDSE$Score)
DfDSE$Score[i] <- score

Students<-DfDSE$Students[i]
Subjects<-DfDSE$Subject[i]
CFUs<-DfDSE$Cfu[i]
Scores <- DfDSE$Score[i]
VotoLaurea<-weightedaverage(DfDSE, Students)

df <- data.frame('Stdents' = Students, 'Subjects' = Subjects, 'cfu' = CFUs, 'Score'= Scores, 'AdjFinalDegree' = VotoLaurea)

return(df)

}

}

DfDSE <- read.csv("https://raw.githubusercontent.com/unimi-dse/c34a5d0e/master/gradecalculator/FileDse.csv")
adjustedfinaldegree(DfDSE, 18)