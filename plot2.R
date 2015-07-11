plot2 <- function(jpg=TRUE) {
    
    library(data.table)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    setwd(directory)
    
    source("./getdata.R")
    
    DT <- getdata()
    
    if(jpg==TRUE){
        ## plot to the jpg device
        jpeg("./plot2.jpg")
    }
    
    plot(x = DT$Date,
         y=DT$Global_active_power,
         type="l",
         ylab = "Global Active  Power(kilowatts)",
         xlab =""
    )
    if(jpg==TRUE){
        ## plot to the jpg device
        dev.off()
    }
    
}