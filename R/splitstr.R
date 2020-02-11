splitstr <- function(testo){


  if(tolower(testo) != "all"){

    Students <- unlist(stri_split_regex(testo,"\\p{WHITE_SPACE}*[^a-zA-Z0-9]\\p{WHITE_SPACE}*"))
  }
  else{
    Students <- unique(unique(MyPackage::mydata$Students))
  }

  return(Students)
}
