plot4 <- function(jpg=TRUE) {
    library(data.table)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    setwd(directory)
    
    
    debugSource("./plot1.R")
    debugSource("./plot2.R")
    debugSource("./plot3.R")
    
    plot.new()
   
    
    if(jpg==TRUE){
        ## plot to the jpg device
        jpeg("./plot4.jpg")
    }
    par(mfrow=c(2,2))
    
    plot2(FALSE)
    plot(x=DT$Date,y=DT$Voltage,type="l",xlab="Voltage",ylab="datetime")
    plot3(FALSE)
    plot(x=DT$Date,y=DT$Global_reactive_power,type="l",xlab="Global_reactive_power",ylab="datetime")
    
    if(jpg==TRUE){
        ## plot to the jpg device
        dev.off()
    }
    
}