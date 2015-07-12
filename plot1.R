plot1 <- function() {
    library(data.table)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    setwd(directory)
    
    source("./getdata.R")
    DT <- getdata()
   
    png(filename = "./plot1.png")
    
    with(DT, {
        hist(Global_active_power
             ,col="red"
             ,xlab = "Global Active Power (kilowatts)"
             ,main = "Global Active Power")
    })
    
    dev.off()
    
}