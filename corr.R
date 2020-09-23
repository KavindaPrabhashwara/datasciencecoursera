corr <- function(directory,threshold=0){
  filelist<-list.files(directory,full.names = TRUE)
  result<-c()
  for(i in 1:332){
    data<-(read.csv(filelist[i]))
    temp<-data[complete.cases(data),]
    if(nrow(temp)>threshold){
      result<-c(result,cor(temp$sulfate,temp$nitrate))
    }
    else 0
    
  } 
  return(result)
}