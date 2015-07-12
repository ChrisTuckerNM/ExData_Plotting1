plot4 <- function() {
    library(data.table)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    setwd(directory)
    
    DT <- getdata()
    
    
    png("./plot4.png")
    par(mfrow = c(2,2))
    
    ## same as plot 2
    with (DT,{
        plot(
            x = DT$Date,
            y = DT$Global_active_power,
            type = "l",
            ylab = "Global Active  Power(kilowatts)",
            xlab = ""
        )
    })
    
    with(DT,{
        plot(
            x = Date,y = Voltage,type = "l",xlab = "datetime",ylab = "voltage"
        )
    })
    
    #same as Plot 3
    with(DT,{
        plot(
            x = DT$Date,
            y = DT$Sub_metering_1,
            type = "l",
            ylab = "Global Active  Power(kilowatts)",
            xlab = "",
            col = "black"
        )
        lines(
            x = DT$Date,
            y = DT$Sub_metering_2,
            type = "l",
            ylab = "Global Active  Power(kilowatts)",
            xlab = "",
            col = "red"
        )
        
        lines(
            x = DT$Date,
            y = DT$Sub_metering_3,
            type = "l",
            ylab = "Global Active  Power(kilowatts)",
            xlab = "",
            col = "blue"
        )
        
        legend(
            "topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty =
                1
        )
    })
    
    with(DT,{
        plot(
            x = DT$Date,y = DT$Global_reactive_power,type = "l",xlab = "datetime",ylab =
                "Global_reactive_power"
        )
        
    })
    
    dev.off()
    
}