plot1 <- function(jpg=TRUE) {
    library(data.table)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    setwd(directory)
    
    source("./getdata.R")
    
    DT <- getdata()
    
    if(jpg==TRUE){
        ## plot to the jpg device
        jpeg("./plot1.jpg")
    }
    
    hist(DT$Global_active_power,col="red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
    
    if(jpg==TRUE){
        ## plot to the jpg device
        dev.off()
    }
    
   
    
}