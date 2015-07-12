plot2 <- function() {
    library(data.table)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    setwd(directory)
    
    source("./getdata.R")
    
    DT <- getdata()
    
    
    png("./plot2.png")
    
    
    with (DT,{
        plot(
            x = DT$Date,
            y = DT$Global_active_power,
            type = "l",
            ylab = "Global Active  Power(kilowatts)",
            xlab = ""
        )
    })
    
    dev.off()
    
}