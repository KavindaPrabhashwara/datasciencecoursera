pollutantmean <- function(directory, pollutant, id = 1:332){
  ##directory is a character vector of length 1                        indicating the location of the csv file
  
  ##id is an integer vector indicating which monitor ids to use
  
  #Pollutant is the character vector of length 1 indicating            which pollutant to calculate the mean for; either "sulfate" or        "nitrate"
  
  ##Return the mean of the pollutant across all id monitors ignoring NA values
  
  names <- list.files(directory)[id]
  read <- lapply(paste(directory,"/",names, sep = ""),read.csv)     
  return(mean(unlist(lapply(read, function(x){x[,pollutant]})), na.rm=T))
  
}

