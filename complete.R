complete <- function(directory, id = 1:332) {
  
  #
  #

  ncolok <- c()
  fd <- c()
  final <- c()
  i=0
  id <- matrix(id,,1)
  
  for(monitor in id){
    i <- i+1
    cod <- id[i,1]
    path <- paste(getwd(), "/", directory, "/", sprintf("%03d", monitor), ".csv", sep = "")
    monitor_data <- read.csv(path)
    interested_data <- c(monitor_data[,2]+monitor_data[,3])
    
    ncolok <- c(interested_data[!is.na(interested_data)])
    ncolok <- matrix(ncolok,,1)
  
    fd <- dim(ncolok)[1]
    
    final <- rbind(final,c(cod,fd))
    final <- data.frame(final)
    names(final)=c("id","nobs")
    
  }
  
  
  final
  
  
}
