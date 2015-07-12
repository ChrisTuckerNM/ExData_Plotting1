plot3 <- function(jpg=TRUE,box=TRUE) {
    
    
    library(data.table)
    library(graphics)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    
    setwd(directory)
    
    source("./getdata.R")
    
    DT <- getdata()
    png("./plot3.png")
    
    plot(x = DT$Date,
         y=DT$Sub_metering_1,
         type="l",
         ylab = "Global Active  Power(kilowatts)",
         xlab ="",
         col="black"
    )
    lines(x = DT$Date,
         y=DT$Sub_metering_2,
         type="l",
         ylab = "Global Active  Power(kilowatts)",
         xlab ="",
         col="red"
    )
    
    lines(x = DT$Date,
         y=DT$Sub_metering_3,
         type="l",
         ylab = "Global Active  Power(kilowatts)",
         xlab ="",
         col="blue"
    )
    
    legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=1 )
    
    dev.off()
    
}