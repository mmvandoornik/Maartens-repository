is.leap <- function(year){
  if(is.numeric(year)){
    if(year >= 1582){
      if(year %% 4 != 0){
        answer = FALSE
      } else if(year %% 100 != 0){
        answer = TRUE
      } else if(year %% 400 != 0){
        answer = FALSE
      } else{
        answer = TRUE
      }
      return(answer)
    } else{
      print(paste(year, "is out of the valid range"))
    }
  } else{
    stop("argument of class numeric expected")
  }
}
