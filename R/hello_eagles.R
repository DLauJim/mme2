#' This package say hello to EAGLES
#' 
#'  @param eagles character, the names of the EAGLES to be greeting
#'  @param  daytime character, optional, either "morning" or " evening"
#'  @return Nothing, it will just say hello
#'  @importFrom lubridate hour
#'  @export

hello_eagles <- function(eagles, daytime = "auto"){
  #decide which daytime it is
  
    if(daytime== "auto"){
    time <- Sys.time()
    time_hour <- hour(time)
    
  if(time_hour < 12){ 
    daytime <- "morning"
    } else if (time_hour >= 12 & time_hour < 14) {
    daytime <- "day"
    } else if(time_hour >= 14 & time_hour < 17) {
      daytime <- "afternoon"
    } else if(time_hour >= 22 & time_hour < 24) {
      daytime <- "evening"}
    } 
  if(daytime == "morning"){
    greeting <- "goog morning, "
    } else if(daytime == "evening"){
    greeting <- "Good evening, "
    } else greeting <- "Hello, "
  
    cat(paste0(greeting, paste0(eagles, collapse = ","), "!"))
}

